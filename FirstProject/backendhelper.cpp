#include "backendhelper.h"

BackendHelper::BackendHelper(QObject *parent)
    : QObject{parent}
{}

void BackendHelper::printText()
{
    qInfo() << "Backend Called";
}

QString BackendHelper::getDate()
{
    return QDateTime::currentDateTime().toString();
}
