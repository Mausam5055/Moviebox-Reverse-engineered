package gj;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.tencent.mmkv.MMKV;
import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigInitDataItem;
import com.transsion.base.infras_config.model.ConfigInitRspCode;
import com.transsion.base.infras_config.model.ConfigLocalState;
import com.transsion.base.infras_config.model.InfrasSourceType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f63623a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f63624b = LazyKt.b(new Function0() { // from class: gj.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.i();
        }
    });

    private b() {
    }

    private final MMKV e() {
        return (MMKV) f63624b.getValue();
    }

    private final String f(InfrasSourceType infrasSourceType) {
        return "source_" + infrasSourceType.name() + "_code";
    }

    private final String g(InfrasSourceType infrasSourceType) {
        return "source_" + infrasSourceType.name() + "_configs";
    }

    private final String h(InfrasSourceType infrasSourceType) {
        return "source_" + infrasSourceType.name() + "_version";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV i() {
        MMKV mmkvI = MMKV.I("infras_init_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final ConfigInitData b(List sourceVersions) {
        Intrinsics.h(sourceVersions, "sourceVersions");
        if (sourceVersions.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = sourceVersions.iterator();
        while (it.hasNext()) {
            ConfigInitDataItem configInitDataItemC = f63623a.c(((ConfigLocalState) it.next()).getSourceType());
            if (configInitDataItemC != null) {
                arrayList.add(configInitDataItemC);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new ConfigInitData(e().getString("globalVersion", null), arrayList, null);
    }

    public final ConfigInitDataItem c(InfrasSourceType sourceType) {
        Object objM454constructorimpl;
        Intrinsics.h(sourceType, "sourceType");
        try {
            String string = e().getString(g(sourceType), null);
            if (string == null) {
                return null;
            }
            JsonElement string2 = JsonParser.parseString(string);
            Intrinsics.g(string2, "parseString(...)");
            String string3 = e().getString(h(sourceType), null);
            String string4 = e().getString(f(sourceType), null);
            try {
                Result.Companion companion = Result.INSTANCE;
                if (string4 == null) {
                    string4 = "";
                }
                objM454constructorimpl = Result.m454constructorimpl(ConfigInitRspCode.valueOf(string4));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            return new ConfigInitDataItem(sourceType, string3, string2, (ConfigInitRspCode) objM454constructorimpl);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final long d() {
        return e().getLong("lastInitTime", 0L);
    }

    public final void j(ConfigInitData data, long j11) {
        Intrinsics.h(data, "data");
        k(j11);
        String version = data.getVersion();
        if (version != null) {
            f63623a.e().putString("globalVersion", version);
        }
        new Gson();
        List<ConfigInitDataItem> items = data.getItems();
        if (items != null) {
            for (ConfigInitDataItem configInitDataItem : items) {
                InfrasSourceType sourceType = configInitDataItem.getSourceType();
                if (sourceType != null) {
                    JsonElement configs = configInitDataItem.getConfigs();
                    if (configs != null) {
                        b bVar = f63623a;
                        bVar.e().putString(bVar.g(sourceType), configs.toString());
                    }
                    String version2 = configInitDataItem.getVersion();
                    if (version2 != null) {
                        b bVar2 = f63623a;
                        bVar2.e().putString(bVar2.h(sourceType), version2);
                    }
                    ConfigInitRspCode code = configInitDataItem.getCode();
                    if (code != null) {
                        b bVar3 = f63623a;
                        bVar3.e().putString(bVar3.f(sourceType), code.name());
                    }
                }
            }
        }
    }

    public final void k(long j11) {
        e().putLong("lastInitTime", j11);
    }

    public final void l(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            e().M("localStates");
        } else {
            e().putString("localStates", new Gson().toJsonTree(list).toString());
        }
    }
}
