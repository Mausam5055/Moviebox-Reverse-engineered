package com.transsion.commercialization.gameres.aha;

import android.content.Context;
import com.transsion.bean.GameInfoType;
import com.transsion.commercialization.gameres.GameResView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class AHAGameResLoader implements com.transsion.commercialization.gameres.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f43777b = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.gameres.aha.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AHAGameResLoader.h();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final a g() {
        return (a) this.f43777b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a h() {
        return (a) zg.c.f79414e.a().h(a.class);
    }

    @Override // com.transsion.commercialization.gameres.a
    public void a(Context context, String pageName, String itemId, Function1 callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(callback, "callback");
        k.d(o0.a(y0.b()), null, null, new AHAGameResLoader$loadGameInfo$1(itemId, this, callback, context, pageName, null), 3, null);
    }

    public mk.a d(String pageName, String itemId, c info) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(info, "info");
        mk.a aVar = new mk.a(GameInfoType.AHA, null, info);
        aVar.l(pageName);
        aVar.k(itemId);
        return aVar;
    }

    public GameResView e(Context context, mk.a info) {
        Intrinsics.h(context, "context");
        Intrinsics.h(info, "info");
        AHAGameResView aHAGameResView = new AHAGameResView(context);
        aHAGameResView.setContent(info);
        return aHAGameResView;
    }

    public String f() {
        return pg.a.f72446a.d() ? "https://tapi.ahagamecenter.com" : "https://api.ahagamecenter.com";
    }
}
