package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.ugc.UGCFilterItem;
import com.transsion.home.bean.ugc.UGCFilterResponse;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class UGCFilterViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f45865f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f45866g = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f45867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f45868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f45869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ol.c f45870e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilterViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45867b = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.z
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCFilterViewModel.g();
            }
        });
        this.f45868c = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCFilterViewModel.q();
            }
        });
        this.f45869d = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.b0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCFilterViewModel.p();
            }
        });
        this.f45870e = (ol.c) zg.c.f79414e.a().h(ol.c.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 g() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 p() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 q() {
        return new androidx.p009lifecycle.b0();
    }

    public final UGCFilterItem h(String str) {
        UGCFilterResponse uGCFilterResponse;
        BaseDto baseDto = (BaseDto) k().f();
        Object obj = null;
        List<UGCFilterItem> items = (baseDto == null || (uGCFilterResponse = (UGCFilterResponse) baseDto.getData()) == null) ? null : uGCFilterResponse.getItems();
        if (items == null) {
            return null;
        }
        for (Object obj2 : items) {
            if (Intrinsics.c(((UGCFilterItem) obj2).getCategoryId(), str)) {
                obj = obj2;
                break;
            }
        }
        return (UGCFilterItem) obj;
    }

    public final void i(String category) {
        Intrinsics.h(category, "category");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCFilterViewModel$getFilterItems$1(category, this, null), 2, null);
    }

    public final LiveData j() {
        return k();
    }

    public final androidx.p009lifecycle.b0 k() {
        return (androidx.p009lifecycle.b0) this.f45867b.getValue();
    }

    public final androidx.p009lifecycle.b0 l() {
        return (androidx.p009lifecycle.b0) this.f45869d.getValue();
    }

    public final void m(String category, int i11, int i12, String str, Integer num, Integer num2, Integer num3, String str2, boolean z10) {
        Intrinsics.h(category, "category");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCFilterViewModel$getUGCContentList$1(category.length() == 0 ? "Education" : category, i11, str, num, num2, num3, z10, this, i12, str2, null), 2, null);
    }

    public final LiveData n() {
        return o();
    }

    public final androidx.p009lifecycle.b0 o() {
        return (androidx.p009lifecycle.b0) this.f45868c.getValue();
    }
}
