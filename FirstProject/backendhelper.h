#ifndef BACKENDHELPER_H
#define BACKENDHELPER_H

#include <QObject>
#include <QDebug>
#include <QDateTime>

class BackendHelper : public QObject
{
    Q_OBJECT
public:
    explicit BackendHelper(QObject *parent = nullptr);

    Q_INVOKABLE void printText();
    Q_INVOKABLE QString getDate();
signals:
};

#endif // BACKENDHELPER_H
