package com.tn.tranpay.helper;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes4.dex */
public final class IPHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f41633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f41634c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final IPHelper f41632a = new IPHelper();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f41635d = CollectionsKt.o("https://api.ipify.org", "https://ifconfig.me/ip", "https://icanhazip.com", "https://ipinfo.io/ip");

    private IPHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object h(String str, Continuation continuation) {
        return i.g(y0.b(), new IPHelper$fetchIPFromService$2(str, null), continuation);
    }

    public static /* synthetic */ Object j(IPHelper iPHelper, boolean z10, Continuation continuation, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        return iPHelper.i(z10, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean k(String str) {
        List listS0 = StringsKt.S0(str, new String[]{"."}, false, 0, 6, null);
        if (listS0.size() != 4) {
            return false;
        }
        List list = listS0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    int i11 = Integer.parseInt((String) it.next());
                    if (i11 < 0 || i11 >= 256) {
                        return false;
                    }
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
        }
        return true;
    }

    public final Object i(boolean z10, Continuation continuation) {
        return i.g(y0.b(), new IPHelper$getCurrentIP$2(z10, null), continuation);
    }
}
