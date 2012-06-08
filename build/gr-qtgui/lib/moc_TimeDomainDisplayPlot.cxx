/****************************************************************************
** Meta object code from reading C++ file 'TimeDomainDisplayPlot.h'
**
** Created: Tue Jun 5 17:04:25 2012
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../gr-qtgui/lib/TimeDomainDisplayPlot.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'TimeDomainDisplayPlot.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TimeDomainDisplayPlot[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      25,   23,   22,   22, 0x05,

 // slots: signature, parameters, type, tag, flags
      60,   52,   22,   22, 0x0a,
      84,   52,   22,   22, 0x0a,
     120,  108,   22,   22, 0x0a,
     154,  142,   22,   22, 0x0a,
     178,  176,   22,   22, 0x0a,
     215,  197,   22,   22, 0x0a,
     256,   23,   22,   22, 0x0a,
     294,   23,   22,   22, 0x0a,
     338,  326,   22,   22, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_TimeDomainDisplayPlot[] = {
    "TimeDomainDisplayPlot\0\0p\0"
    "plotPointSelected(QPointF)\0min,max\0"
    "setYaxis(double,double)\0setXaxis(double,double)\0"
    "which,title\0setTitle(int,QString)\0"
    "which,color\0setColor(int,QString)\0s\0"
    "resizeSlot(QSize*)\0sr,units,strunits\0"
    "SetSampleRate(double,double,std::string)\0"
    "OnPickerPointSelected(QwtDoublePoint)\0"
    "OnPickerPointSelected6(QPointF)\0"
    "plotItem,on\0LegendEntryChecked(QwtPlotItem*,bool)\0"
};

void TimeDomainDisplayPlot::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TimeDomainDisplayPlot *_t = static_cast<TimeDomainDisplayPlot *>(_o);
        switch (_id) {
        case 0: _t->plotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 1: _t->setYaxis((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 2: _t->setXaxis((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 3: _t->setTitle((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 4: _t->setColor((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 5: _t->resizeSlot((*reinterpret_cast< QSize*(*)>(_a[1]))); break;
        case 6: _t->SetSampleRate((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< const std::string(*)>(_a[3]))); break;
        case 7: _t->OnPickerPointSelected((*reinterpret_cast< const QwtDoublePoint(*)>(_a[1]))); break;
        case 8: _t->OnPickerPointSelected6((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 9: _t->LegendEntryChecked((*reinterpret_cast< QwtPlotItem*(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TimeDomainDisplayPlot::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TimeDomainDisplayPlot::staticMetaObject = {
    { &QwtPlot::staticMetaObject, qt_meta_stringdata_TimeDomainDisplayPlot,
      qt_meta_data_TimeDomainDisplayPlot, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TimeDomainDisplayPlot::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TimeDomainDisplayPlot::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TimeDomainDisplayPlot::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TimeDomainDisplayPlot))
        return static_cast<void*>(const_cast< TimeDomainDisplayPlot*>(this));
    return QwtPlot::qt_metacast(_clname);
}

int TimeDomainDisplayPlot::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QwtPlot::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void TimeDomainDisplayPlot::plotPointSelected(const QPointF _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
