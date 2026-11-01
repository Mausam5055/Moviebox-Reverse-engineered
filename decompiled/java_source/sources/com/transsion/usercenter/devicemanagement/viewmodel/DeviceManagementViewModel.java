package com.transsion.usercenter.devicemanagement.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.baselib.locale.d;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.devicemanagement.model.LinkedDeviceDto;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightDto;
import com.transsion.usercenter.devicemanagement.repository.DeviceManagementRepository;
import ih.b;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import jw.e;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class DeviceManagementViewModel extends t0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f56682d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DeviceManagementRepository f56683a = new DeviceManagementRepository();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f56684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LiveData f56685c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DeviceManagementViewModel() {
        b0 b0Var = new b0();
        this.f56684b = b0Var;
        this.f56685c = b0Var;
    }

    private final String h(Long l11) {
        if (l11 != null) {
            if (l11.longValue() <= 0) {
                l11 = null;
            }
            if (l11 != null) {
                return new SimpleDateFormat("dd/MM/yy", Locale.US).format(new Date(TimeUnit.SECONDS.toMillis(l11.longValue())));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String i(String str) {
        if (str != null) {
            if (StringsKt.q0(str)) {
                str = null;
            }
            if (str != null) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy", Locale.US);
                simpleDateFormat.setLenient(false);
                ParsePosition parsePosition = new ParsePosition(0);
                Date date = simpleDateFormat.parse(str, parsePosition);
                return (date == null || parsePosition.getIndex() != str.length()) ? str : new SimpleDateFormat("MMM dd, yyyy", j()).format(date);
            }
        }
        return null;
    }

    private final Locale j() {
        d.b bVar = d.f43297f;
        Locale localeJ = bVar.e().j();
        if (localeJ == null) {
            Locale ENGLISH = Locale.ENGLISH;
            Intrinsics.g(ENGLISH, "ENGLISH");
            return ENGLISH;
        }
        List listS = ArraysKt.S(bVar.f());
        boolean z10 = false;
        if (!(listS instanceof Collection) || !listS.isEmpty()) {
            Iterator it = listS.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(new Locale((String) it.next()).getLanguage(), localeJ.getLanguage())) {
                    z10 = true;
                    break;
                }
            }
        }
        if (!z10) {
            localeJ = null;
        }
        if (localeJ != null) {
            return localeJ;
        }
        Locale ENGLISH2 = Locale.ENGLISH;
        Intrinsics.g(ENGLISH2, "ENGLISH");
        return ENGLISH2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int m(Integer num) {
        return RangesKt.f(num != null ? num.intValue() : 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0081  */
    public final jw.d n(LinkedDeviceDto linkedDeviceDto) {
        int i11;
        String strH = b.f65241a.h();
        String deviceId = linkedDeviceDto.getDeviceId();
        boolean z10 = deviceId != null && (StringsKt.q0(deviceId) ^ true) && Intrinsics.c(linkedDeviceDto.getDeviceId(), strH);
        String deviceName = linkedDeviceDto.getDeviceName();
        String str = deviceName == null ? "" : deviceName;
        String strH2 = h(linkedDeviceDto.getLoginTimestamp());
        String icon = linkedDeviceDto.getIcon();
        String deviceName2 = linkedDeviceDto.getDeviceName();
        if (deviceName2 == null) {
            deviceName2 = "";
        }
        if (StringsKt.a0(deviceName2, "tv", true)) {
            i11 = R$drawable.ic_device_linked_tv;
        } else {
            String deviceName3 = linkedDeviceDto.getDeviceName();
            if (deviceName3 == null) {
                deviceName3 = "";
            }
            if (StringsKt.a0(deviceName3, "television", true)) {
                i11 = R$drawable.ic_device_linked_tv;
            } else {
                String deviceName4 = linkedDeviceDto.getDeviceName();
                if (deviceName4 == null) {
                    deviceName4 = "";
                }
                if (StringsKt.a0(deviceName4, "web", true)) {
                    i11 = R$drawable.ic_device_linked_phone;
                } else {
                    String deviceName5 = linkedDeviceDto.getDeviceName();
                    if (StringsKt.a0(deviceName5 != null ? deviceName5 : "", "browser", true)) {
                        i11 = R$drawable.ic_device_linked_phone;
                    } else {
                        i11 = R$drawable.ic_device_linked_phone;
                    }
                }
            }
        }
        return new jw.d(str, strH2, z10, icon, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final e o(UpgradeRightDto upgradeRightDto) {
        String featureIcon = upgradeRightDto.getFeatureIcon();
        String featureName = upgradeRightDto.getFeatureName();
        if (featureName == null) {
            featureName = "";
        }
        return new e(featureIcon, featureName, upgradeRightDto.getFeatureLink(), m(upgradeRightDto.getBasicCount()), m(upgradeRightDto.getProCount()));
    }

    public final LiveData k() {
        return this.f56685c;
    }

    public final void l() {
        k.d(u0.a(this), null, null, new DeviceManagementViewModel$loadData$1(this, null), 3, null);
    }
}
