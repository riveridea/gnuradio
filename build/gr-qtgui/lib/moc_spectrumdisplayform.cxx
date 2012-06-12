/****************************************************************************
** Meta object code from reading C++ file 'spectrumdisplayform.h'
**
** Created: Fri Jun 8 12:10:40 2012
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../gr-qtgui/lib/spectrumdisplayform.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'spectrumdisplayform.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SpectrumDisplayForm[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      33,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      28,   21,   20,   20, 0x05,

 // slots: signature, parameters, type, tag, flags
      61,   59,   20,   20, 0x0a,
      88,   59,   20,   20, 0x0a,
     121,  109,   20,   20, 0x0a,
     160,  151,   20,   20, 0x0a,
     190,  151,   20,   20, 0x0a,
     220,   20,   20,   20, 0x0a,
     246,   20,   20,   20, 0x0a,
     278,  272,   20,   20, 0x0a,
     348,  294,   20,   20, 0x0a,
     388,   59,   20,   20, 0x0a,
     421,  413,   20,   20, 0x0a,
     454,  444,   20,   20, 0x0a,
     479,   20,   20,   20, 0x0a,
     522,   20,   20,   20, 0x0a,
     565,   20,   20,   20, 0x0a,
     605,   20,   20,   20, 0x0a,
     631,   20,   20,   20, 0x0a,
     668,  662,   20,   20, 0x0a,
     693,  662,   20,   20, 0x0a,
     718,  662,   20,   20, 0x0a,
     738,  662,   20,   20, 0x0a,
     775,  767,   20,   20, 0x0a,
     828,  808,   20,   20, 0x0a,
     883,  878,   20,   20, 0x0a,
     912,  767,   20,   20, 0x0a,
     946,  944,   20,   20, 0x0a,
     968,   20,   20,   20, 0x08,
    1013,   20,   20,   20, 0x08,
    1032, 1030,   20,   20, 0x08,
    1064, 1030,   20,   20, 0x08,
    1098, 1030,   20,   20, 0x08,
    1131, 1030,   20,   20, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_SpectrumDisplayForm[] = {
    "SpectrumDisplayForm\0\0p,type\0"
    "plotPointSelected(QPointF,int)\0e\0"
    "resizeEvent(QResizeEvent*)\0"
    "customEvent(QEvent*)\0valueString\0"
    "AvgLineEdit_valueChanged(int)\0newState\0"
    "MaxHoldCheckBox_toggled(bool)\0"
    "MinHoldCheckBox_toggled(bool)\0"
    "MinHoldResetBtn_clicked()\0"
    "MaxHoldResetBtn_clicked()\0index\0"
    "TabChanged(int)\0"
    "newCenterFrequency,newStartFrequency,newStopFrequency\0"
    "SetFrequencyRange(double,double,double)\0"
    "closeEvent(QCloseEvent*)\0newItem\0"
    "WindowTypeChanged(int)\0useRFFlag\0"
    "UseRFFrequenciesCB(bool)\0"
    "waterfallMaximumIntensityChangedCB(double)\0"
    "waterfallMinimumIntensityChangedCB(double)\0"
    "WaterfallIntensityColorTypeChanged(int)\0"
    "WaterfallAutoScaleBtnCB()\0"
    "FFTComboBoxSelectedCB(QString)\0state\0"
    "ToggleTabFrequency(bool)\0"
    "ToggleTabWaterfall(bool)\0ToggleTabTime(bool)\0"
    "ToggleTabConstellation(bool)\0min,max\0"
    "SetTimeDomainAxis(double,double)\0"
    "xmin,xmax,ymin,ymax\0"
    "SetConstellationAxis(double,double,double,double)\0"
    "size\0SetConstellationPenSize(int)\0"
    "SetFrequencyAxis(double,double)\0t\0"
    "SetUpdateTime(double)\0"
    "newFrequencyData(const SpectrumUpdateEvent*)\0"
    "UpdateGuiTimer()\0p\0onFFTPlotPointSelected(QPointF)\0"
    "onWFallPlotPointSelected(QPointF)\0"
    "onTimePlotPointSelected(QPointF)\0"
    "onConstPlotPointSelected(QPointF)\0"
};

void SpectrumDisplayForm::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SpectrumDisplayForm *_t = static_cast<SpectrumDisplayForm *>(_o);
        switch (_id) {
        case 0: _t->plotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->resizeEvent((*reinterpret_cast< QResizeEvent*(*)>(_a[1]))); break;
        case 2: _t->customEvent((*reinterpret_cast< QEvent*(*)>(_a[1]))); break;
        case 3: _t->AvgLineEdit_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->MaxHoldCheckBox_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->MinHoldCheckBox_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->MinHoldResetBtn_clicked(); break;
        case 7: _t->MaxHoldResetBtn_clicked(); break;
        case 8: _t->TabChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->SetFrequencyRange((*reinterpret_cast< const double(*)>(_a[1])),(*reinterpret_cast< const double(*)>(_a[2])),(*reinterpret_cast< const double(*)>(_a[3]))); break;
        case 10: _t->closeEvent((*reinterpret_cast< QCloseEvent*(*)>(_a[1]))); break;
        case 11: _t->WindowTypeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->UseRFFrequenciesCB((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 13: _t->waterfallMaximumIntensityChangedCB((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 14: _t->waterfallMinimumIntensityChangedCB((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 15: _t->WaterfallIntensityColorTypeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 16: _t->WaterfallAutoScaleBtnCB(); break;
        case 17: _t->FFTComboBoxSelectedCB((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 18: _t->ToggleTabFrequency((*reinterpret_cast< const bool(*)>(_a[1]))); break;
        case 19: _t->ToggleTabWaterfall((*reinterpret_cast< const bool(*)>(_a[1]))); break;
        case 20: _t->ToggleTabTime((*reinterpret_cast< const bool(*)>(_a[1]))); break;
        case 21: _t->ToggleTabConstellation((*reinterpret_cast< const bool(*)>(_a[1]))); break;
        case 22: _t->SetTimeDomainAxis((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 23: _t->SetConstellationAxis((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4]))); break;
        case 24: _t->SetConstellationPenSize((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 25: _t->SetFrequencyAxis((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 26: _t->SetUpdateTime((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 27: _t->newFrequencyData((*reinterpret_cast< const SpectrumUpdateEvent*(*)>(_a[1]))); break;
        case 28: _t->UpdateGuiTimer(); break;
        case 29: _t->onFFTPlotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 30: _t->onWFallPlotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 31: _t->onTimePlotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 32: _t->onConstPlotPointSelected((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData SpectrumDisplayForm::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SpectrumDisplayForm::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_SpectrumDisplayForm,
      qt_meta_data_SpectrumDisplayForm, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SpectrumDisplayForm::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SpectrumDisplayForm::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SpectrumDisplayForm::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SpectrumDisplayForm))
        return static_cast<void*>(const_cast< SpectrumDisplayForm*>(this));
    if (!strcmp(_clname, "Ui::SpectrumDisplayForm"))
        return static_cast< Ui::SpectrumDisplayForm*>(const_cast< SpectrumDisplayForm*>(this));
    return QWidget::qt_metacast(_clname);
}

int SpectrumDisplayForm::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 33)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 33;
    }
    return _id;
}

// SIGNAL 0
void SpectrumDisplayForm::plotPointSelected(const QPointF _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
