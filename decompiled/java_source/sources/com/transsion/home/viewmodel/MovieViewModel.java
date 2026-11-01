package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class MovieViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f45810f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f45811g = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f45812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f45813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f45814d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ol.c f45815e;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovieViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45812b = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieViewModel.g();
            }
        });
        this.f45813c = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieViewModel.o();
            }
        });
        this.f45814d = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieViewModel.p();
            }
        });
        this.f45815e = (ol.c) zg.c.f79414e.a().h(ol.c.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 g() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 o() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 p() {
        return new androidx.p009lifecycle.b0();
    }

    public final void h(Integer num, String version) {
        Intrinsics.h(version, "version");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieViewModel$getFilterItems$1(this, num, version, null), 2, null);
    }

    public final LiveData i() {
        return j();
    }

    public final androidx.p009lifecycle.b0 j() {
        return (androidx.p009lifecycle.b0) this.f45812b.getValue();
    }

    public final void k(int i11, int i12, String str, Map map, boolean z10) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("page", Integer.valueOf(i11));
        jsonObject.addProperty("perPage", Integer.valueOf(i12));
        jsonObject.addProperty(TmcStartParams.KEY_CHANNEL_ID, str);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (StringsKt.c0((CharSequence) entry.getValue(), ",", false, 2, null)) {
                    JsonArray jsonArray = new JsonArray();
                    Iterator it = StringsKt.S0((CharSequence) entry.getValue(), new String[]{","}, false, 0, 6, null).iterator();
                    while (it.hasNext()) {
                        jsonArray.add((String) it.next());
                    }
                    jsonObject.add((String) entry.getKey(), jsonArray);
                } else {
                    jsonObject.addProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieViewModel$getMovieList$2(jsonObject, this, z10, str, map, null), 2, null);
    }

    public final LiveData l() {
        return m();
    }

    public final androidx.p009lifecycle.b0 m() {
        return (androidx.p009lifecycle.b0) this.f45813c.getValue();
    }

    public final androidx.p009lifecycle.b0 n() {
        return (androidx.p009lifecycle.b0) this.f45814d.getValue();
    }
}
