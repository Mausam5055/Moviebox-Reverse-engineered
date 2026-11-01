package com.transsion.shorttv._channel.ui.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
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
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvMovieViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f52637f = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f52638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f52639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f52640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final nr.a f52641e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvMovieViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f52638b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv._channel.ui.viewmodel.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvMovieViewModel.g();
            }
        });
        this.f52639c = LazyKt.b(new Function0() { // from class: com.transsion.shorttv._channel.ui.viewmodel.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvMovieViewModel.n();
            }
        });
        this.f52640d = LazyKt.b(new Function0() { // from class: com.transsion.shorttv._channel.ui.viewmodel.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvMovieViewModel.o();
            }
        });
        this.f52641e = (nr.a) zg.c.f79414e.a().h(nr.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 g() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 n() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 o() {
        return new b0();
    }

    public final void h(String version) {
        Intrinsics.h(version, "version");
        k.d(u0.a(this), y0.b(), null, new ShortTvMovieViewModel$getFilterItems$1(this, version, null), 2, null);
    }

    public final LiveData i() {
        return j();
    }

    public final b0 j() {
        return (b0) this.f52638b.getValue();
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
        k.d(u0.a(this), y0.b(), null, new ShortTvMovieViewModel$getMovieList$2(jsonObject, this, z10, str, map, null), 2, null);
    }

    public final LiveData l() {
        return m();
    }

    public final b0 m() {
        return (b0) this.f52639c.getValue();
    }
}
