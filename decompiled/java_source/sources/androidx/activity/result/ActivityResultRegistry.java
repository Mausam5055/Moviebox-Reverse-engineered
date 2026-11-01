package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.random.Random;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final b f895h = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f896a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f897b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f898c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f899d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient Map f900e = new LinkedHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f901f = new LinkedHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Bundle f902g = new Bundle();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.activity.result.a f903a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final f.a f904b;

        public a(androidx.activity.result.a callback, f.a contract) {
            Intrinsics.h(callback, "callback");
            Intrinsics.h(contract, "contract");
            this.f903a = callback;
            this.f904b = contract;
        }

        public final androidx.activity.result.a a() {
            return this.f903a;
        }

        public final f.a b() {
            return this.f904b;
        }
    }

    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Lifecycle f905a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f906b;

        public c(Lifecycle lifecycle) {
            Intrinsics.h(lifecycle, "lifecycle");
            this.f905a = lifecycle;
            this.f906b = new ArrayList();
        }

        public final void a(r observer) {
            Intrinsics.h(observer, "observer");
            this.f905a.a(observer);
            this.f906b.add(observer);
        }

        public final void b() {
            Iterator it = this.f906b.iterator();
            while (it.hasNext()) {
                this.f905a.d((r) it.next());
            }
            this.f906b.clear();
        }
    }

    public static final class d extends androidx.activity.result.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f.a f909c;

        d(String str, f.a aVar) {
            this.f908b = str;
            this.f909c = aVar;
        }

        @Override // androidx.activity.result.b
        public void b(Object obj, androidx.core.app.c cVar) throws Exception {
            Object obj2 = ActivityResultRegistry.this.f897b.get(this.f908b);
            f.a aVar = this.f909c;
            if (obj2 != null) {
                int iIntValue = ((Number) obj2).intValue();
                ActivityResultRegistry.this.f899d.add(this.f908b);
                try {
                    ActivityResultRegistry.this.i(iIntValue, this.f909c, obj, cVar);
                    return;
                } catch (Exception e11) {
                    ActivityResultRegistry.this.f899d.remove(this.f908b);
                    throw e11;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override // androidx.activity.result.b
        public void c() {
            ActivityResultRegistry.this.p(this.f908b);
        }
    }

    public static final class e extends androidx.activity.result.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f911b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f.a f912c;

        e(String str, f.a aVar) {
            this.f911b = str;
            this.f912c = aVar;
        }

        @Override // androidx.activity.result.b
        public void b(Object obj, androidx.core.app.c cVar) throws Exception {
            Object obj2 = ActivityResultRegistry.this.f897b.get(this.f911b);
            f.a aVar = this.f912c;
            if (obj2 != null) {
                int iIntValue = ((Number) obj2).intValue();
                ActivityResultRegistry.this.f899d.add(this.f911b);
                try {
                    ActivityResultRegistry.this.i(iIntValue, this.f912c, obj, cVar);
                    return;
                } catch (Exception e11) {
                    ActivityResultRegistry.this.f899d.remove(this.f911b);
                    throw e11;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override // androidx.activity.result.b
        public void c() {
            ActivityResultRegistry.this.p(this.f911b);
        }
    }

    private final void d(int i11, String str) {
        this.f896a.put(Integer.valueOf(i11), str);
        this.f897b.put(str, Integer.valueOf(i11));
    }

    private final void g(String str, int i11, Intent intent, a aVar) {
        if ((aVar != null ? aVar.a() : null) == null || !this.f899d.contains(str)) {
            this.f901f.remove(str);
            this.f902g.putParcelable(str, new ActivityResult(i11, intent));
        } else {
            aVar.a().a(aVar.b().c(i11, intent));
            this.f899d.remove(str);
        }
    }

    private final int h() {
        for (Number number : SequencesKt.i(new Function0<Integer>() { // from class: androidx.activity.result.ActivityResultRegistry$generateRandomNumber$1
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(Random.INSTANCE.nextInt(2147418112) + 65536);
            }
        })) {
            if (!this.f896a.containsKey(Integer.valueOf(number.intValue()))) {
                return number.intValue();
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ActivityResultRegistry activityResultRegistry, String str, androidx.activity.result.a aVar, f.a aVar2, u uVar, Lifecycle.Event event) {
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (Lifecycle.Event.ON_START != event) {
            if (Lifecycle.Event.ON_STOP == event) {
                activityResultRegistry.f900e.remove(str);
                return;
            } else {
                if (Lifecycle.Event.ON_DESTROY == event) {
                    activityResultRegistry.p(str);
                    return;
                }
                return;
            }
        }
        activityResultRegistry.f900e.put(str, new a(aVar, aVar2));
        if (activityResultRegistry.f901f.containsKey(str)) {
            Object obj = activityResultRegistry.f901f.get(str);
            activityResultRegistry.f901f.remove(str);
            aVar.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) androidx.core.os.c.a(activityResultRegistry.f902g, str, ActivityResult.class);
        if (activityResult != null) {
            activityResultRegistry.f902g.remove(str);
            aVar.a(aVar2.c(activityResult.getResultCode(), activityResult.getData()));
        }
    }

    private final void o(String str) {
        if (((Integer) this.f897b.get(str)) != null) {
            return;
        }
        d(h(), str);
    }

    public final boolean e(int i11, int i12, Intent intent) {
        String str = (String) this.f896a.get(Integer.valueOf(i11));
        if (str == null) {
            return false;
        }
        g(str, i12, intent, (a) this.f900e.get(str));
        return true;
    }

    public final boolean f(int i11, Object obj) {
        String str = (String) this.f896a.get(Integer.valueOf(i11));
        if (str == null) {
            return false;
        }
        a aVar = (a) this.f900e.get(str);
        if ((aVar != null ? aVar.a() : null) == null) {
            this.f902g.remove(str);
            this.f901f.put(str, obj);
            return true;
        }
        androidx.activity.result.a aVarA = aVar.a();
        Intrinsics.f(aVarA, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>");
        if (!this.f899d.remove(str)) {
            return true;
        }
        aVarA.a(obj);
        return true;
    }

    public abstract void i(int i11, f.a aVar, Object obj, androidx.core.app.c cVar);

    public final void j(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        if (stringArrayList2 != null) {
            this.f899d.addAll(stringArrayList2);
        }
        Bundle bundle2 = bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
        if (bundle2 != null) {
            this.f902g.putAll(bundle2);
        }
        int size = stringArrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            String str = stringArrayList.get(i11);
            if (this.f897b.containsKey(str)) {
                Integer num = (Integer) this.f897b.remove(str);
                if (!this.f902g.containsKey(str)) {
                    TypeIntrinsics.d(this.f896a).remove(num);
                }
            }
            Integer num2 = integerArrayList.get(i11);
            Intrinsics.g(num2, "rcs[i]");
            int iIntValue = num2.intValue();
            String str2 = stringArrayList.get(i11);
            Intrinsics.g(str2, "keys[i]");
            d(iIntValue, str2);
        }
    }

    public final void k(Bundle outState) {
        Intrinsics.h(outState, "outState");
        outState.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f897b.values()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f897b.keySet()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f899d));
        outState.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(this.f902g));
    }

    public final androidx.activity.result.b l(final String key, u lifecycleOwner, final f.a contract, final androidx.activity.result.a callback) {
        Intrinsics.h(key, "key");
        Intrinsics.h(lifecycleOwner, "lifecycleOwner");
        Intrinsics.h(contract, "contract");
        Intrinsics.h(callback, "callback");
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.b().isAtLeast(Lifecycle.State.STARTED)) {
            throw new IllegalStateException(("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.").toString());
        }
        o(key);
        c cVar = (c) this.f898c.get(key);
        if (cVar == null) {
            cVar = new c(lifecycle);
        }
        cVar.a(new r() { // from class: androidx.activity.result.c
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                ActivityResultRegistry.n(this.f917a, key, callback, contract, uVar, event);
            }
        });
        this.f898c.put(key, cVar);
        return new d(key, contract);
    }

    public final androidx.activity.result.b m(String key, f.a contract, androidx.activity.result.a callback) {
        Intrinsics.h(key, "key");
        Intrinsics.h(contract, "contract");
        Intrinsics.h(callback, "callback");
        o(key);
        this.f900e.put(key, new a(callback, contract));
        if (this.f901f.containsKey(key)) {
            Object obj = this.f901f.get(key);
            this.f901f.remove(key);
            callback.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) androidx.core.os.c.a(this.f902g, key, ActivityResult.class);
        if (activityResult != null) {
            this.f902g.remove(key);
            callback.a(contract.c(activityResult.getResultCode(), activityResult.getData()));
        }
        return new e(key, contract);
    }

    public final void p(String key) {
        Integer num;
        Intrinsics.h(key, "key");
        if (!this.f899d.contains(key) && (num = (Integer) this.f897b.remove(key)) != null) {
            this.f896a.remove(num);
        }
        this.f900e.remove(key);
        if (this.f901f.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + this.f901f.get(key));
            this.f901f.remove(key);
        }
        if (this.f902g.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + ((ActivityResult) androidx.core.os.c.a(this.f902g, key, ActivityResult.class)));
            this.f902g.remove(key);
        }
        c cVar = (c) this.f898c.get(key);
        if (cVar != null) {
            cVar.b();
            this.f898c.remove(key);
        }
    }
}
