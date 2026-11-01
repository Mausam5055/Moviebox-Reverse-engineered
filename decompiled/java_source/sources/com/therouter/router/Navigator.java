package com.therouter.router;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.therouter.TheRouterKt;
import com.therouter.history.HistoryRecorder;
import com.therouter.router.action.ActionManager;
import com.transsion.gslb.Utils;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class Navigator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f40756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Intent f40757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f40758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f40759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f40760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f40761f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bundle f40762g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f40763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f40764i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Uri f40765j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ClipData f40766k;

    public Navigator(String str) {
        this(str, null);
    }

    public Navigator(String str, Intent intent) {
        this.f40756a = str;
        this.f40757b = intent;
        this.f40758c = str;
        this.f40759d = "";
        this.f40760e = new Bundle();
        this.f40761f = new HashMap();
        TheRouterKt.h(!TextUtils.isEmpty(this.f40756a), "Navigator", "Navigator constructor parameter url is empty");
        for (bg.d dVar : NavigatorKt.f40769c) {
            if (dVar != null && dVar.b(this.f40756a)) {
                this.f40756a = dVar.a(this.f40756a);
            }
        }
        String str2 = this.f40756a;
        this.f40759d = str2 == null ? "" : str2;
        Uri uri = Uri.parse(str2 != null ? str2 : "");
        c(this, uri.getEncodedFragment());
        c(this, uri.getEncodedQuery());
    }

    private static final void a(Navigator navigator, String str, String str2) {
        String strSubstring;
        if (str == null || StringsKt.q0(str) || Intrinsics.c(StringsKt.n1(str).toString(), UrlUtils.EQUAL_MARK)) {
            return;
        }
        int iO0 = StringsKt.o0(str, UrlUtils.EQUAL_MARK, 0, false, 6, null);
        String strSubstring2 = "";
        if (iO0 != -1) {
            if (iO0 != 0) {
                strSubstring2 = str.substring(0, iO0);
                Intrinsics.g(strSubstring2, "substring(...)");
                strSubstring = str.substring(iO0 + 1);
                Intrinsics.g(strSubstring, "substring(...)");
            } else {
                strSubstring = str.substring(1);
                Intrinsics.g(strSubstring, "substring(...)");
            }
            String str3 = strSubstring2;
            strSubstring2 = strSubstring;
            str = str3;
        }
        if (!TextUtils.isEmpty(str2 != null ? StringsKt.n1(str2).toString() : null)) {
            strSubstring2 = strSubstring2 + str2;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(strSubstring2)) {
            return;
        }
        navigator.f40761f.put(str, strSubstring2);
    }

    static /* synthetic */ void b(Navigator navigator, String str, String str2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: _init_$parser");
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        a(navigator, str, str2);
    }

    private static final void c(Navigator navigator, String str) {
        List listS0;
        if (str == null || !StringsKt.b0(str, '?', false, 2, null)) {
            if (str == null || (listS0 = StringsKt.S0(str, new String[]{UrlUtils.AND_MARK}, false, 0, 6, null)) == null) {
                return;
            }
            Iterator it = listS0.iterator();
            while (it.hasNext()) {
                b(navigator, (String) it.next(), null, 4, null);
            }
            return;
        }
        int iN0 = StringsKt.n0(str, '?', 0, false, 6, null);
        if (iN0 > -1) {
            String strSubstring = str.substring(0, iN0);
            Intrinsics.g(strSubstring, "substring(...)");
            String strSubstring2 = str.substring(iN0 + 1);
            Intrinsics.g(strSubstring2, "substring(...)");
            List listR0 = StringsKt.R0(strSubstring, new char[]{'&'}, false, 0, 6, null);
            if (listR0.isEmpty()) {
                return;
            }
            int size = listR0.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (i11 == listR0.size() - 1) {
                    a(navigator, (String) listR0.get(i11), strSubstring2);
                } else {
                    b(navigator, (String) listR0.get(i11), null, 4, null);
                }
            }
        }
    }

    public static /* synthetic */ void w(Navigator navigator, Context context, int i11, bg.c cVar, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigation");
        }
        if ((i12 & 4) != 0) {
            cVar = null;
        }
        navigator.s(context, i11, cVar);
    }

    public static /* synthetic */ void x(Navigator navigator, Context context, bg.c cVar, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigation");
        }
        if ((i11 & 1) != 0) {
            context = com.therouter.c.c();
        }
        if ((i11 & 2) != 0) {
            cVar = null;
        }
        navigator.u(context, cVar);
    }

    public static /* synthetic */ void y(Navigator navigator, Fragment fragment, int i11, bg.c cVar, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigation");
        }
        if ((i12 & 4) != 0) {
            cVar = null;
        }
        navigator.v(fragment, i11, cVar);
    }

    public final Navigator A(String str, Bundle bundle) {
        this.f40760e.putBundle(str, bundle);
        return this;
    }

    public final Navigator B(String str, byte b11) {
        this.f40760e.putByte(str, b11);
        return this;
    }

    public final Navigator C(String str, char c11) {
        this.f40760e.putChar(str, c11);
        return this;
    }

    public final Navigator D(String str, double d11) {
        this.f40760e.putDouble(str, d11);
        return this;
    }

    public final Navigator E(String str, float f11) {
        this.f40760e.putFloat(str, f11);
        return this;
    }

    public final Navigator F(String str, int i11) {
        this.f40760e.putInt(str, i11);
        return this;
    }

    public final Navigator G(String str, long j11) {
        this.f40760e.putLong(str, j11);
        return this;
    }

    public final Navigator H(String key, Object value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        NavigatorKt.j().put(key, new SoftReference(value));
        return this;
    }

    public final Navigator I(String str, Parcelable parcelable) {
        this.f40760e.putParcelable(str, parcelable);
        return this;
    }

    public final Navigator J(String str, Serializable serializable) {
        this.f40760e.putSerializable(str, serializable);
        return this;
    }

    public final Navigator K(String str, String str2) {
        this.f40760e.putString(str, str2);
        return this;
    }

    public final void i(Context context) {
        if (ActionManager.f40778a.d(this)) {
            x(this, context, null, 2, null);
        }
    }

    public final Navigator j(int i11) {
        Bundle bundle = this.f40760e;
        bundle.putInt("therouter_intent_flags", i11 | bundle.getInt("therouter_intent_flags", 0));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Fragment k() {
        Bundle extras;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        TheRouterKt.d("Navigator::navigationFragment", "begin navigate " + o(), null, 4, null);
        String strO = o();
        for (bg.e eVar : NavigatorKt.f40770d) {
            if (eVar != null && eVar.c(strO)) {
                strO = eVar.b(strO);
            }
        }
        TheRouterKt.d("Navigator::navigationFragment", "path replace to " + ((Object) strO), null, 4, null);
        RouteItem routeItemK = RouteMapKt.k(strO);
        if (routeItemK != null && (extras = routeItemK.getExtras()) != null) {
            extras.putAll(this.f40760e);
            Set<String> setKeySet = this.f40761f.keySet();
            Intrinsics.g(setKeySet, "<get-keys>(...)");
            for (String str : setKeySet) {
                if (!extras.containsKey(str)) {
                    extras.putString(str, (String) this.f40761f.get(str));
                }
            }
        }
        if (routeItemK != null) {
            TheRouterKt.d("Navigator::navigationFragment", "match route " + routeItemK, null, 4, null);
        }
        for (bg.g gVar : NavigatorKt.f40771e) {
            if (gVar != null && gVar.b(routeItemK)) {
                routeItemK = gVar.a(routeItemK);
            }
        }
        TheRouterKt.d("Navigator::navigationFragment", "route replace to " + routeItemK, null, 4, null);
        if (routeItemK != null) {
            NavigatorKt.f40773g.invoke(routeItemK, new Function1<RouteItem, Unit>() { // from class: com.therouter.router.Navigator$createFragment$5$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((RouteItem) obj);
                    return Unit.f67061a;
                }

                /* JADX WARN: Type inference failed for: r1v3, types: [T, androidx.fragment.app.Fragment] */
                public final void invoke(RouteItem routeItem) {
                    Bundle extras2;
                    Intrinsics.h(routeItem, "routeItem");
                    if (!c.b(routeItem.getClassName())) {
                        if (TheRouter.m()) {
                            throw new RuntimeException("TheRouter::Navigator " + routeItem.getClassName() + " is not Fragment");
                        }
                        return;
                    }
                    try {
                        objectRef.element = c.a(routeItem.getClassName());
                        Bundle extras3 = routeItem.getExtras();
                        Intent intentN = this.n();
                        if (intentN != null && (extras2 = intentN.getExtras()) != null) {
                            extras3.putAll(extras2);
                        }
                        extras3.putString("therouter_action", routeItem.getAction());
                        extras3.putString("therouter_path", this.p());
                        extras3.putString("therouter_description", routeItem.getDescription());
                        Fragment fragment = objectRef.element;
                        if (fragment != null) {
                            fragment.setArguments(extras3);
                        }
                        TheRouterKt.d("Navigator::navigation", "create fragment " + routeItem.getClassName(), null, 4, null);
                    } catch (Exception e11) {
                        TheRouterKt.c("Navigator::navigationFragment", "create fragment instance error " + e11.getMessage(), new Function0<Unit>() { // from class: com.therouter.router.Navigator$createFragment$5$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m305invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m305invoke() {
                                e11.printStackTrace();
                            }
                        });
                    }
                    HistoryRecorder.c(new com.therouter.history.c(this.p()));
                }
            });
        }
        return (Fragment) objectRef.element;
    }

    public final Intent l(final Context context) {
        Bundle extras;
        TheRouterKt.d("Navigator::createIntent", "begin navigate " + o(), null, 4, null);
        if (context == null) {
            context = com.therouter.c.c();
        }
        String strO = o();
        for (bg.e eVar : NavigatorKt.f40770d) {
            if (eVar != null && eVar.c(strO)) {
                String strB = eVar.b(strO);
                TheRouterKt.d("Navigator::createIntent", strO + " replace to " + ((Object) strB), null, 4, null);
                strO = strB;
            }
        }
        RouteItem routeItemK = RouteMapKt.k(strO);
        if (routeItemK != null && (extras = routeItemK.getExtras()) != null) {
            extras.putAll(this.f40760e);
            Set<String> setKeySet = this.f40761f.keySet();
            Intrinsics.g(setKeySet, "<get-keys>(...)");
            for (String str : setKeySet) {
                if (!extras.containsKey(str)) {
                    extras.putString(str, (String) this.f40761f.get(str));
                }
            }
        }
        if (routeItemK != null) {
            TheRouterKt.d("Navigator::createIntent", "match route " + routeItemK, null, 4, null);
        }
        for (bg.g gVar : NavigatorKt.f40771e) {
            if (gVar != null && gVar.b(routeItemK) && (routeItemK = gVar.a(routeItemK)) != null) {
                TheRouterKt.d("Navigator::createIntent", "route replace to " + routeItemK, null, 4, null);
            }
        }
        final Intent intent = this.f40757b;
        if (intent == null) {
            intent = new Intent();
        }
        if (routeItemK != null) {
            NavigatorKt.f40773g.invoke(routeItemK, new Function1<RouteItem, Unit>() { // from class: com.therouter.router.Navigator$createIntent$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((RouteItem) obj);
                    return Unit.f67061a;
                }

                public final void invoke(final RouteItem routeItem) {
                    ComponentName componentName;
                    Intrinsics.h(routeItem, "routeItem");
                    Uri uri = this.this$0.f40765j;
                    if (uri != null) {
                        intent.setData(uri);
                    }
                    ClipData clipData = this.this$0.f40766k;
                    if (clipData != null) {
                        intent.setClipData(clipData);
                    }
                    if (Build.VERSION.SDK_INT >= 29 && this.this$0.f40764i != null) {
                        intent.setIdentifier(this.this$0.f40764i);
                    }
                    Intent intent2 = intent;
                    Context context2 = context;
                    if (context2 != null) {
                        componentName = new ComponentName(context2.getPackageName(), routeItem.getClassName());
                    } else {
                        Navigator navigator = this.this$0;
                        if (TheRouter.m()) {
                            throw new RuntimeException("context is null, path is -> " + navigator.p());
                        }
                        TheRouterKt.d("Navigator::createIntent", "context is null, path is -> " + navigator.p(), null, 4, null);
                        componentName = null;
                    }
                    intent2.setComponent(componentName);
                    if (!(context instanceof Activity)) {
                        intent.addFlags(ASTNode.DEOP);
                    }
                    com.therouter.f fVar = com.therouter.f.f40729a;
                    String className = routeItem.getClassName();
                    final Navigator navigator2 = this.this$0;
                    fVar.a(className, new Function1<Activity, Unit>() { // from class: com.therouter.router.Navigator$createIntent$5.5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((Activity) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(Activity it) {
                            Intrinsics.h(it, "it");
                            if (!Intrinsics.c(it.getClass().getName(), routeItem.getClassName()) || TextUtils.isEmpty(routeItem.getAction())) {
                                return;
                            }
                            TheRouter.c(routeItem.getAction()).H("therouter_object_navigator", navigator2).H("therouter_object_current_activity", it).i(it);
                        }
                    });
                    intent.putExtra("therouter_action", routeItem.getAction());
                    intent.putExtra("therouter_path", this.this$0.p());
                    intent.putExtra("therouter_description", routeItem.getDescription());
                    Bundle extras2 = routeItem.getExtras();
                    Intent intent3 = intent;
                    Bundle bundle = extras2.getBundle("therouter_bundle");
                    if (bundle != null) {
                        extras2.remove("therouter_bundle");
                        intent3.putExtra("therouter_bundle", bundle);
                    }
                    intent3.putExtras(extras2);
                    intent.addFlags(routeItem.getExtras().getInt("therouter_intent_flags"));
                    int i11 = routeItem.getExtras().getInt("therouter_intent_animation_in");
                    int i12 = routeItem.getExtras().getInt("therouter_intent_animation_out");
                    if (i11 == 0 && i12 == 0) {
                        return;
                    }
                    if (!(context instanceof Activity)) {
                        if (TheRouter.m()) {
                            throw new RuntimeException("Navigator::createIntent context is not Activity, ignore animation");
                        }
                        return;
                    }
                    TheRouterKt.d("Navigator::createIntent", "overridePendingTransition " + routeItem.getClassName(), null, 4, null);
                    ((Activity) context).overridePendingTransition(routeItem.getExtras().getInt("therouter_intent_animation_in"), routeItem.getExtras().getInt("therouter_intent_animation_out"));
                }
            });
        }
        return intent;
    }

    public final Bundle m() {
        return this.f40760e;
    }

    public final Intent n() {
        return this.f40757b;
    }

    public final String o() {
        String str = this.f40756a;
        if (str == null) {
            str = "";
        }
        if (!StringsKt.c0(str, UrlUtils.QUESTION_MARK, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(0, StringsKt.n0(str, '?', 0, false, 6, null));
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String p() {
        return q(new Function2<String, String, String>() { // from class: com.therouter.router.Navigator$getUrlWithParams$1
            @Override // kotlin.jvm.functions.Function2
            public final String invoke(String k11, String v11) {
                Intrinsics.h(k11, "k");
                Intrinsics.h(v11, "v");
                return k11 + UrlUtils.EQUAL_MARK + v11;
            }
        });
    }

    public final String q(Function2 handle) {
        String strQ;
        Object string;
        Object string2;
        Intrinsics.h(handle, "handle");
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it = this.f40760e.keySet().iterator();
        boolean z10 = true;
        while (true) {
            Object obj = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (!this.f40761f.containsKey(next)) {
                Intrinsics.e(next);
                Object obj2 = this.f40760e.get(next);
                if (obj2 == null || (string = obj2.toString()) == null) {
                    string = "";
                }
                String str = (String) handle.invoke(next, string);
                if (!TextUtils.isEmpty(str)) {
                    if (z10) {
                        sb2.append(str);
                        z10 = false;
                    } else {
                        sb2.append('&');
                        Object obj3 = this.f40760e.get(next);
                        if (obj3 != null && (string2 = obj3.toString()) != null) {
                            obj = string2;
                        }
                        sb2.append((String) handle.invoke(next, obj));
                    }
                }
            }
        }
        Uri uri = Uri.parse(this.f40759d);
        String encodedQuery = uri.getEncodedQuery();
        String str2 = encodedQuery == null ? "" : encodedQuery;
        String encodedFragment = uri.getEncodedFragment();
        String str3 = encodedFragment == null ? "" : encodedFragment;
        if (TextUtils.isEmpty(sb2)) {
            strQ = this.f40759d;
        } else if (!TextUtils.isEmpty(str2)) {
            if (!StringsKt.V0(str2, '&', false, 2, null)) {
                sb2.append('&');
            }
            sb2.append(str2);
            String str4 = this.f40759d;
            String string3 = sb2.toString();
            Intrinsics.g(string3, "toString(...)");
            strQ = StringsKt.Q(str4, str2, string3, false, 4, null);
        } else if (!TextUtils.isEmpty(str3)) {
            int iO0 = StringsKt.o0(this.f40759d, str3, 0, false, 6, null);
            if (iO0 > -1) {
                String strSubstring = this.f40759d.substring(0, iO0);
                Intrinsics.g(strSubstring, "substring(...)");
                strQ = StringsKt.b0(strSubstring, '?', false, 2, null) ? StringsKt.Q(this.f40759d, UrlUtils.QUESTION_MARK, UrlUtils.QUESTION_MARK + ((Object) sb2), false, 4, null) : StringsKt.Q(this.f40759d, Utils.SEPARATOR, UrlUtils.QUESTION_MARK + ((Object) sb2) + Utils.SEPARATOR, false, 4, null);
            } else {
                strQ = this.f40759d;
            }
        } else if (StringsKt.b0(this.f40759d, '?', false, 2, null)) {
            strQ = StringsKt.Q(this.f40759d, UrlUtils.QUESTION_MARK, UrlUtils.QUESTION_MARK + ((Object) sb2), false, 4, null);
        } else {
            strQ = this.f40759d + UrlUtils.QUESTION_MARK + ((Object) sb2);
        }
        Set<String> setKeySet = this.f40761f.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        while (true) {
            String str5 = strQ;
            for (String str6 : setKeySet) {
                if (this.f40760e.containsKey(str6)) {
                    strQ = StringsKt.Q(str5, str6 + UrlUtils.EQUAL_MARK + this.f40761f.get(str6), str6 + UrlUtils.EQUAL_MARK + this.f40760e.get(str6), false, 4, null);
                }
            }
            return str5;
        }
    }

    public final void r(Context context) {
        x(this, context, null, 2, null);
    }

    public final void s(Context context, int i11, bg.c cVar) {
        t(context, null, i11, cVar);
    }

    public final void t(final Context context, final Fragment fragment, final int i11, final bg.c cVar) {
        Bundle extras;
        if (!RouteMapKt.i() || this.f40763h) {
            this.f40763h = true;
            TheRouterKt.d("Navigator::navigation", "add pending navigator " + o(), null, 4, null);
            NavigatorKt.f40767a.addLast(new g(this, new Function0<Unit>() { // from class: com.therouter.router.Navigator$navigation$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m306invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m306invoke() {
                    this.this$0.f40763h = false;
                    this.this$0.t(context, fragment, i11, cVar);
                }
            }));
            return;
        }
        TheRouterKt.d("Navigator::navigation", "begin navigate " + o(), null, 4, null);
        if (context == null) {
            context = fragment != null ? fragment.getActivity() : null;
            if (context == null) {
                context = com.therouter.c.c();
            }
        }
        final Context context2 = context;
        if (cVar == null) {
            cVar = NavigatorKt.f40772f;
        }
        String strO = o();
        for (bg.e eVar : NavigatorKt.f40770d) {
            if (eVar != null && eVar.c(strO)) {
                String strB = eVar.b(strO);
                TheRouterKt.d("Navigator::navigation", strO + " replace to " + ((Object) strB), null, 4, null);
                strO = strB;
            }
        }
        RouteItem routeItemK = RouteMapKt.k(strO);
        ActionManager actionManager = ActionManager.f40778a;
        if (actionManager.d(this) && routeItemK == null) {
            actionManager.c(this, context2);
            return;
        }
        if (routeItemK != null && (extras = routeItemK.getExtras()) != null) {
            extras.putAll(this.f40760e);
            Set<String> setKeySet = this.f40761f.keySet();
            Intrinsics.g(setKeySet, "<get-keys>(...)");
            for (String str : setKeySet) {
                if (!extras.containsKey(str)) {
                    extras.putString(str, (String) this.f40761f.get(str));
                }
            }
        }
        if (routeItemK != null) {
            TheRouterKt.d("Navigator::navigation", "match route " + routeItemK, null, 4, null);
        }
        for (bg.g gVar : NavigatorKt.f40771e) {
            if (gVar != null && gVar.b(routeItemK) && (routeItemK = gVar.a(routeItemK)) != null) {
                TheRouterKt.d("Navigator::navigation", "route replace to " + routeItemK, null, 4, null);
            }
        }
        if (routeItemK == null) {
            cVar.d(this, i11);
            return;
        }
        String className = routeItemK.getClassName();
        if (className == null) {
            className = "";
        }
        if (!c.b(className)) {
            TheRouterKt.d("Navigator::navigation", "NavigationCallback on found", null, 4, null);
            cVar.c(this);
            final bg.c cVar2 = cVar;
            NavigatorKt.f40773g.invoke(routeItemK, new Function1<RouteItem, Unit>() { // from class: com.therouter.router.Navigator$navigation$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((RouteItem) obj);
                    return Unit.f67061a;
                }

                public final void invoke(final RouteItem routeItem) {
                    ComponentName componentName;
                    Intrinsics.h(routeItem, "routeItem");
                    Intent intentN = this.this$0.n();
                    if (intentN == null) {
                        intentN = new Intent();
                    }
                    Uri uri = this.this$0.f40765j;
                    if (uri != null) {
                        intentN.setData(uri);
                    }
                    ClipData clipData = this.this$0.f40766k;
                    if (clipData != null) {
                        intentN.setClipData(clipData);
                    }
                    if (Build.VERSION.SDK_INT >= 29 && this.this$0.f40764i != null) {
                        intentN.setIdentifier(this.this$0.f40764i);
                    }
                    Context context3 = context2;
                    if (context3 != null) {
                        componentName = new ComponentName(context3.getPackageName(), routeItem.getClassName());
                    } else {
                        Navigator navigator = this.this$0;
                        if (TheRouter.m()) {
                            throw new RuntimeException("context is null, path is -> " + navigator.p());
                        }
                        TheRouterKt.d("Navigator::navigation", "context is null, path is -> " + navigator.p(), null, 4, null);
                        componentName = null;
                    }
                    intentN.setComponent(componentName);
                    if (!(context2 instanceof Activity) && fragment == null) {
                        intentN.addFlags(ASTNode.DEOP);
                    }
                    com.therouter.f fVar = com.therouter.f.f40729a;
                    String className2 = routeItem.getClassName();
                    final bg.c cVar3 = cVar2;
                    final Navigator navigator2 = this.this$0;
                    fVar.a(className2, new Function1<Activity, Unit>() { // from class: com.therouter.router.Navigator$navigation$6.5
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((Activity) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(Activity it) {
                            Intrinsics.h(it, "it");
                            if (Intrinsics.c(it.getClass().getName(), routeItem.getClassName())) {
                                cVar3.a(navigator2, it);
                                if (TextUtils.isEmpty(routeItem.getAction())) {
                                    return;
                                }
                                TheRouter.c(routeItem.getAction()).H("therouter_object_navigator", navigator2).H("therouter_object_current_activity", it).i(it);
                            }
                        }
                    });
                    intentN.putExtra("therouter_action", routeItem.getAction());
                    intentN.putExtra("therouter_path", this.this$0.p());
                    intentN.putExtra("therouter_description", routeItem.getDescription());
                    Bundle extras2 = routeItem.getExtras();
                    Bundle bundle = extras2.getBundle("therouter_bundle");
                    if (bundle != null) {
                        extras2.remove("therouter_bundle");
                        intentN.putExtra("therouter_bundle", bundle);
                    }
                    intentN.putExtras(extras2);
                    intentN.addFlags(routeItem.getExtras().getInt("therouter_intent_flags"));
                    if (i11 == -1008600) {
                        if (fragment != null) {
                            TheRouterKt.d("Navigator::navigation", "fragment.startActivity " + routeItem.getClassName(), null, 4, null);
                            fragment.startActivity(intentN, this.this$0.f40762g);
                        } else {
                            TheRouterKt.d("Navigator::navigation", "startActivity " + routeItem.getClassName(), null, 4, null);
                            Context context4 = context2;
                            if (context4 != null) {
                                context4.startActivity(intentN, this.this$0.f40762g);
                            }
                        }
                    } else if (fragment != null) {
                        TheRouterKt.d("Navigator::navigation", "fragment.startActivityForResult " + routeItem.getClassName(), null, 4, null);
                        fragment.startActivityForResult(intentN, i11, this.this$0.f40762g);
                    } else if (context2 instanceof Activity) {
                        TheRouterKt.d("Navigator::navigation", "startActivityForResult " + routeItem.getClassName(), null, 4, null);
                        ((Activity) context2).startActivityForResult(intentN, i11, this.this$0.f40762g);
                    } else {
                        if (TheRouter.m()) {
                            throw new RuntimeException("TheRouter::Navigator context is not Activity or Fragment");
                        }
                        Context context5 = context2;
                        if (context5 != null) {
                            context5.startActivity(intentN, this.this$0.f40762g);
                        }
                    }
                    int i12 = routeItem.getExtras().getInt("therouter_intent_animation_in");
                    int i13 = routeItem.getExtras().getInt("therouter_intent_animation_out");
                    if (i12 != 0 || i13 != 0) {
                        if (context2 instanceof Activity) {
                            TheRouterKt.d("Navigator::navigation", "overridePendingTransition " + routeItem.getClassName(), null, 4, null);
                            ((Activity) context2).overridePendingTransition(routeItem.getExtras().getInt("therouter_intent_animation_in"), routeItem.getExtras().getInt("therouter_intent_animation_out"));
                        } else {
                            Fragment fragment2 = fragment;
                            if (fragment2 != null) {
                                FragmentActivity activity = fragment2.getActivity();
                                if (activity != null) {
                                    activity.overridePendingTransition(routeItem.getExtras().getInt("therouter_intent_animation_in"), routeItem.getExtras().getInt("therouter_intent_animation_out"));
                                }
                            } else if (TheRouter.m()) {
                                throw new RuntimeException("TheRouter::Navigator context is not Activity, ignore animation");
                            }
                        }
                    }
                    HistoryRecorder.c(new com.therouter.history.b(this.this$0.p()));
                }
            });
            cVar.b(this);
            return;
        }
        if (TheRouter.m()) {
            throw new RuntimeException("TheRouter::Navigator " + routeItemK.getClassName() + " is Fragment");
        }
    }

    public final void u(Context context, bg.c cVar) {
        s(context, -1008600, cVar);
    }

    public final void v(Fragment fragment, int i11, bg.c cVar) {
        t(fragment != null ? fragment.getActivity() : null, fragment, i11, cVar);
    }

    public final Navigator z(String str, boolean z10) {
        this.f40760e.putBoolean(str, z10);
        return this;
    }
}
