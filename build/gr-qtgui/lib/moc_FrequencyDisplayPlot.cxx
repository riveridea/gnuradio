/****************************************************************************
** Meta object code from reading C++ file 'FrequencyDisplayPlot.h'
**
** Created: Tue Jun 5 17:04:25 2012
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../gr-qtgui/lib/FrequencyDisplayPlot.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FrequencyDisplayPlot.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_FrequencyDisplayPlot[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      24,   22,   21,   21, 0x05,

 // slots: signature, parameters, type, tag, flags
      53,   51,   21,   21, 0x0a,
      72,   21,   21,   21, 0x0a,
     103,   21,   21,   21, 0x0a,
     134,   22,   21,   21, 0x0a,
     172,   22,   21,   21, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_FrequencyDisplayPlot[] = {
    "FrequencyDisplayPlot\0\0p\0"
    "plotPointSelected(QPointF)\0e\0"
    "resizeSlot(QSize*)\0SetLowerIntensityLevel(double)\0"
    "SetUpperIntensityLevel(double)\0"
    "OnPickerPointSelected(QwtDoublePoint)\0"
    "OnPickerPointSelected6(QPointF)\0"
};

void FrequencyDisplayPlot::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        FrequencyDisplayPlot *_t = static_cast<FrequencyDisplayPlot *>(_o);
        switch (_id) {
        case 0: _t->plotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 1: _t->resizeSlot((*reinterpret_cast< QSize*(*)>(_a[1]))); break;
        case 2: _t->SetLowerIntensityLevel((*reinterpret_cast< const double(*)>(_a[1]))); break;
        case 3: _t->SetUpperIntensityLevel((*reinterpret_cast< const double(*)>(_a[1]))); break;
        case 4: _t->OnPickerPointSelected((*reinterpret_cast< const QwtDoublePoint(*)>(_a[1]))); break;
        case 5: _t->OnPickerPointSelected6((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData FrequencyDisplayPlot::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject FrequencyDisplayPlot::staticMetaObject = {
    { &QwtPlot::staticMetaObject, qt_meta_stringdata_FrequencyDisplayPlot,
      qt_meta_data_FrequencyDisplayPlot, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &FrequencyDisplayPlot::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *FrequencyDisplayPlot::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *FrequencyDisplayPlot::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FrequencyDisplayPlot))
        return static_cast<void*>(const_cast< FrequencyDisplayPlot*>(this));
    return QwtPlot::qt_metacast(_clname);
}

int FrequencyDisplayPlot::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QwtPlot::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void FrequencyDisplayPlot::plotPointSelected(const QPointF _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
