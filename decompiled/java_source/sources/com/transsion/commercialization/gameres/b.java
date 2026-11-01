package com.transsion.commercialization.gameres;

import android.content.Context;
import com.transsion.bean.GameInfoType;
import com.transsion.commercializationapi.IGameResApi;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements IGameResApi {
    @Override // com.transsion.commercializationapi.IGameResApi
    public void a(Context context, String pageName, GameInfoType type, String itemId, Function1 callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(type, "type");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(callback, "callback");
        a.f43774a.a(type).a(context, pageName, itemId, callback);
    }
}
