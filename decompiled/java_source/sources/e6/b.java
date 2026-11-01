package e6;

import android.content.Context;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f61551a = new ConcurrentHashMap();

    public static synchronized void a(Context context, TKC tkc, v5.a.InterfaceC0945a interfaceC0945a) {
        if (tkc == null) {
            return;
        }
        try {
            ConcurrentHashMap concurrentHashMap = f61551a;
            c cVar = (c) concurrentHashMap.get(tkc.sef());
            if (cVar == null) {
                cVar = new c(context, tkc);
                concurrentHashMap.put(tkc.sef(), cVar);
                tkc.TKC();
                tkc.sef();
            }
            cVar.m(interfaceC0945a);
            tkc.TKC();
            tkc.sef();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static synchronized void b(TKC tkc) {
        try {
            c cVar = (c) f61551a.remove(tkc.sef());
            if (cVar != null) {
                cVar.n(true);
            }
            tkc.TKC();
            tkc.sef();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
