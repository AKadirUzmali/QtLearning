#ifndef BACKENDREGISTER_H
#define BACKENDREGISTER_H

#include <QObject>
#include <QQmlEngine>

class BackendRegister : public QObject
{
    Q_OBJECT
public:
    explicit BackendRegister(QObject *parent = nullptr);

    Q_INVOKABLE int getNum() noexcept;
    Q_INVOKABLE void printSomething() noexcept;

    static void registerClass();
    static QObject* singletonProvider(QQmlEngine*, QJSEngine*);

signals:
};

#endif // BACKENDREGISTER_H
