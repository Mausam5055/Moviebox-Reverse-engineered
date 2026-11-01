package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import androidx.collection.x0;
import androidx.collection.z;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final z f8197a = new z(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f8198b = RequestExecutor.a("fonts-androidx", 10, 10000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f8199c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final x0 f8200d = new x0();

    class a implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f8201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f8202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ androidx.core.provider.e f8203c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f8204d;

        a(String str, Context context, androidx.core.provider.e eVar, int i11) {
            this.f8201a = str;
            this.f8202b = context;
            this.f8203c = eVar;
            this.f8204d = i11;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            return i.c(this.f8201a, this.f8202b, z0.h.a(new Object[]{this.f8203c}), this.f8204d);
        }
    }

    class b implements androidx.core.util.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CallbackWrapper f8205a;

        b(CallbackWrapper callbackWrapper) {
            this.f8205a = callbackWrapper;
        }

        @Override // androidx.core.util.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.f8205a.b(eVar);
        }
    }

    class c implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f8206a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f8207b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f8208c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f8209d;

        c(String str, Context context, List list, int i11) {
            this.f8206a = str;
            this.f8207b = context;
            this.f8208c = list;
            this.f8209d = i11;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            try {
                return i.c(this.f8206a, this.f8207b, this.f8208c, this.f8209d);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    class d implements androidx.core.util.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f8210a;

        d(String str) {
            this.f8210a = str;
        }

        @Override // androidx.core.util.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            synchronized (i.f8199c) {
                try {
                    x0 x0Var = i.f8200d;
                    ArrayList arrayList = (ArrayList) x0Var.get(this.f8210a);
                    if (arrayList == null) {
                        return;
                    }
                    x0Var.remove(this.f8210a);
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        ((androidx.core.util.a) arrayList.get(i11)).accept(eVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Typeface f8211a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f8212b;

        e(int i11) {
            this.f8211a = null;
            this.f8212b = i11;
        }

        e(Typeface typeface) {
            this.f8211a = typeface;
            this.f8212b = 0;
        }

        boolean a() {
            return this.f8212b == 0;
        }
    }

    private static String a(List list, int i11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < list.size(); i12++) {
            sb2.append(((androidx.core.provider.e) list.get(i12)).d());
            sb2.append("-");
            sb2.append(i11);
            if (i12 < list.size() - 1) {
                sb2.append(";");
            }
        }
        return sb2.toString();
    }

    private static int b(k.a aVar) {
        int i11 = 1;
        if (aVar.e() != 0) {
            return aVar.e() != 1 ? -3 : -2;
        }
        k.b[] bVarArrC = aVar.c();
        if (bVarArrC != null && bVarArrC.length != 0) {
            i11 = 0;
            for (k.b bVar : bVarArrC) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i11;
    }

    static e c(String str, Context context, List list, int i11) {
        f4.a.c("getFontSync");
        try {
            z zVar = f8197a;
            Typeface typeface = (Typeface) zVar.get(str);
            if (typeface != null) {
                e eVar = new e(typeface);
                f4.a.f();
                return eVar;
            }
            try {
                k.a aVarE = androidx.core.provider.d.e(context, list, null);
                int iB = b(aVarE);
                if (iB != 0) {
                    e eVar2 = new e(iB);
                    f4.a.f();
                    return eVar2;
                }
                Typeface typefaceB = (!aVarE.f() || Build.VERSION.SDK_INT < 29) ? z0.i.b(context, null, aVarE.c(), i11) : z0.i.c(context, null, aVarE.d(), i11);
                if (typefaceB == null) {
                    e eVar3 = new e(-3);
                    f4.a.f();
                    return eVar3;
                }
                zVar.put(str, typefaceB);
                e eVar4 = new e(typefaceB);
                f4.a.f();
                return eVar4;
            } catch (PackageManager.NameNotFoundException unused) {
                e eVar5 = new e(-1);
                f4.a.f();
                return eVar5;
            }
        } catch (Throwable th2) {
            f4.a.f();
            throw th2;
        }
    }

    static Typeface d(Context context, List list, int i11, Executor executor, CallbackWrapper callbackWrapper) {
        String strA = a(list, i11);
        Typeface typeface = (Typeface) f8197a.get(strA);
        if (typeface != null) {
            callbackWrapper.b(new e(typeface));
            return typeface;
        }
        b bVar = new b(callbackWrapper);
        synchronized (f8199c) {
            try {
                x0 x0Var = f8200d;
                ArrayList arrayList = (ArrayList) x0Var.get(strA);
                if (arrayList != null) {
                    arrayList.add(bVar);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(bVar);
                x0Var.put(strA, arrayList2);
                c cVar = new c(strA, context, list, i11);
                if (executor == null) {
                    executor = f8198b;
                }
                RequestExecutor.c(executor, cVar, new d(strA));
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static Typeface e(Context context, androidx.core.provider.e eVar, CallbackWrapper callbackWrapper, int i11, int i12) {
        String strA = a(z0.h.a(new Object[]{eVar}), i11);
        Typeface typeface = (Typeface) f8197a.get(strA);
        if (typeface != null) {
            callbackWrapper.b(new e(typeface));
            return typeface;
        }
        if (i12 == -1) {
            e eVarC = c(strA, context, z0.h.a(new Object[]{eVar}), i11);
            callbackWrapper.b(eVarC);
            return eVarC.f8211a;
        }
        try {
            e eVar2 = (e) RequestExecutor.d(f8198b, new a(strA, context, eVar, i11), i12);
            callbackWrapper.b(eVar2);
            return eVar2.f8211a;
        } catch (InterruptedException unused) {
            callbackWrapper.b(new e(-3));
            return null;
        }
    }
}
