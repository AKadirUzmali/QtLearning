#include "backendproperty.h"

BackendProperty::BackendProperty(QObject *parent)
    : QObject{parent}, m_myNumber{42}
{}

int BackendProperty::myNumber() const
{
    return m_myNumber;
}

void BackendProperty::setMyNumber(int newMyNumber)
{
    if (m_myNumber == newMyNumber)
        return;
    m_myNumber = newMyNumber;
    emit myNumberChanged();
}
