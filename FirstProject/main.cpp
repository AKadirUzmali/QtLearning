#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>
#include <QQmlContext>

#include "backendhelper.h"
#include "backendregister.h"
#include "backendproperty.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon(":/assets/icons-png/slavnem-logo.png"));

    QQmlApplicationEngine engine;

    BackendHelper backhelper;
    BackendRegister backregister;
    BackendProperty backproperty;

    engine.rootContext()->setContextProperty("cBackendHelper", &backhelper);
    backregister.registerClass();

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("FirstProject", "Main");

    return app.exec();
}
