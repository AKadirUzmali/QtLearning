#include "backendregister.h"

static BackendRegister* m_object = nullptr;

BackendRegister::BackendRegister(QObject *parent)
    : QObject{parent}
{}

int BackendRegister::getNum() noexcept
{
    return 42;
}

void BackendRegister::printSomething() noexcept
{
    qInfo() << "Backend Register Class Print";
}

void BackendRegister::registerClass()
{
    qmlRegisterSingletonType<BackendRegister>("com.reddit", 1, 0, "BackendRegister", singletonProvider);
}

QObject* BackendRegister::singletonProvider(QQmlEngine*, QJSEngine*)
{
    if( m_object == nullptr )
        m_object = new BackendRegister();
    return m_object;
}
