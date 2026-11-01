package com.therouter.inject;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.therouter.TheRouterKt;
import com.therouter.router.d;
import dalvik.system.DexFile;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DebugOnlyKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ArrayList f40741a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ArrayList f40742b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final HashMap f40743c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile int f40744d = -1;

    public static final void a(Context context) {
        if (context == null || f40744d >= 0) {
            return;
        }
        f40744d = 0;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            Intrinsics.g(applicationInfo, "getApplicationInfo(...)");
            Enumeration<String> enumerationEntries = new DexFile(applicationInfo.sourceDir).entries();
            while (enumerationEntries.hasMoreElements()) {
                String strNextElement = enumerationEntries.nextElement();
                Intrinsics.e(strNextElement);
                if (StringsKt.W(strNextElement, "a.ServiceProvider__TheRouter__", false, 2, null) && !StringsKt.c0(strNextElement, "$", false, 2, null)) {
                    try {
                        Class<?> cls = Class.forName(strNextElement);
                        if (b.class.isAssignableFrom(cls) && !Intrinsics.c(b.class, cls)) {
                            ArrayList arrayList = f40741a;
                            Object objNewInstance = cls.newInstance();
                            Intrinsics.f(objNewInstance, "null cannot be cast to non-null type com.therouter.inject.Interceptor");
                            arrayList.add((b) objNewInstance);
                        }
                    } catch (Exception e11) {
                        TheRouterKt.c("RouterInject", "create class error for " + strNextElement, new Function0<Unit>() { // from class: com.therouter.inject.DebugOnlyKt$getAllDI$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m299invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m299invoke() {
                                e11.printStackTrace();
                            }
                        });
                    }
                } else if (StringsKt.W(strNextElement, "a.RouterMap__TheRouter__", false, 2, null) && !StringsKt.c0(strNextElement, "$", false, 2, null)) {
                    try {
                        Class<?> cls2 = Class.forName(strNextElement);
                        if (d.class.isAssignableFrom(cls2) && !Intrinsics.c(d.class, cls2)) {
                            ArrayList arrayList2 = f40742b;
                            Object objNewInstance2 = cls2.newInstance();
                            Intrinsics.f(objNewInstance2, "null cannot be cast to non-null type com.therouter.router.IRouterMapAPT");
                            arrayList2.add((d) objNewInstance2);
                        }
                    } catch (Exception e12) {
                        TheRouterKt.c("RouterInject", "create class error for " + strNextElement, new Function0<Unit>() { // from class: com.therouter.inject.DebugOnlyKt$getAllDI$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m300invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m300invoke() {
                                e12.printStackTrace();
                            }
                        });
                    }
                } else if (StringsKt.G(strNextElement, "__TheRouter__Autowired", false, 2, null) && !StringsKt.c0(strNextElement, "$", false, 2, null)) {
                    try {
                        Class<?> cls3 = Class.forName(strNextElement);
                        Class<?> cls4 = Class.forName(StringsKt.Q(strNextElement, "__TheRouter__Autowired", "", false, 4, null));
                        HashMap map = f40743c;
                        Intrinsics.e(cls4);
                        Method declaredMethod = cls3.getDeclaredMethod("autowiredInject", Object.class);
                        Intrinsics.g(declaredMethod, "getDeclaredMethod(...)");
                        map.put(cls4, declaredMethod);
                    } catch (Exception e13) {
                        TheRouterKt.c("RouterInject", "create class error for " + strNextElement, new Function0<Unit>() { // from class: com.therouter.inject.DebugOnlyKt$getAllDI$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m301invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m301invoke() {
                                e13.printStackTrace();
                            }
                        });
                    }
                }
            }
            f40744d = 1;
        } catch (Exception e14) {
            TheRouterKt.c("RouterInject", "getAllDI error", new Function0<Unit>() { // from class: com.therouter.inject.DebugOnlyKt$getAllDI$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m302invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m302invoke() {
                    e14.printStackTrace();
                }
            });
        }
    }

    public static final HashMap b() {
        return f40743c;
    }

    public static final ArrayList c() {
        return f40742b;
    }

    public static final ArrayList d() {
        return f40741a;
    }
}
