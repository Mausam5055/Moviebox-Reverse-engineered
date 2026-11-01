package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.datastore.core.e;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesMigration implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2 f8632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function3 f8633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f8634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f8635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set f8637f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", "", "T", "it"}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration$3", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<Object, Continuation<? super Boolean>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(obj, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Boxing.a(true);
        }
    }

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f8638a = new a();

        private a() {
        }

        @JvmStatic
        public static final boolean a(Context context, String name) {
            Intrinsics.h(context, "context");
            Intrinsics.h(name, "name");
            return context.deleteSharedPreferences(name);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(final Context context, final String sharedPreferencesName, Set keysToMigrate, Function2 shouldRunMigration, Function3 migrate) {
        this(new Function0<SharedPreferences>() { // from class: androidx.datastore.migrations.SharedPreferencesMigration.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                SharedPreferences sharedPreferences = context.getSharedPreferences(sharedPreferencesName, 0);
                Intrinsics.g(sharedPreferences, "context.getSharedPrefere…me, Context.MODE_PRIVATE)");
                return sharedPreferences;
            }
        }, keysToMigrate, shouldRunMigration, migrate, context, sharedPreferencesName);
        Intrinsics.h(context, "context");
        Intrinsics.h(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.h(keysToMigrate, "keysToMigrate");
        Intrinsics.h(shouldRunMigration, "shouldRunMigration");
        Intrinsics.h(migrate, "migrate");
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, Function2 function2, Function3 function3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i11 & 4) != 0 ? androidx.datastore.migrations.a.a() : set, (i11 & 8) != 0 ? new AnonymousClass3(null) : function2, function3);
    }

    private SharedPreferencesMigration(Function0 function0, Set set, Function2 function2, Function3 function3, Context context, String str) {
        this.f8632a = function2;
        this.f8633b = function3;
        this.f8634c = context;
        this.f8635d = str;
        this.f8636e = LazyKt.b(function0);
        this.f8637f = set == androidx.datastore.migrations.a.a() ? null : CollectionsKt.V0(set);
    }

    private final void d(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            a.a(context, str);
            return;
        }
        File fileG = g(context, str);
        File fileF = f(fileG);
        fileG.delete();
        fileF.delete();
    }

    private final SharedPreferences e() {
        return (SharedPreferences) this.f8636e.getValue();
    }

    private final File f(File file) {
        return new File(file.getPath() + ".bak");
    }

    private final File g(Context context, String str) {
        return new File(new File(context.getApplicationInfo().dataDir, "shared_prefs"), str + ".xml");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.e
    public Object a(Object obj, Continuation continuation) throws Throwable {
        SharedPreferencesMigration$shouldMigrate$1 sharedPreferencesMigration$shouldMigrate$1;
        SharedPreferencesMigration sharedPreferencesMigration;
        if (continuation instanceof SharedPreferencesMigration$shouldMigrate$1) {
            sharedPreferencesMigration$shouldMigrate$1 = (SharedPreferencesMigration$shouldMigrate$1) continuation;
            int i11 = sharedPreferencesMigration$shouldMigrate$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sharedPreferencesMigration$shouldMigrate$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sharedPreferencesMigration$shouldMigrate$1 = new SharedPreferencesMigration$shouldMigrate$1(this, continuation);
            }
        } else {
            sharedPreferencesMigration$shouldMigrate$1 = new SharedPreferencesMigration$shouldMigrate$1(this, continuation);
        }
        Object objInvoke = sharedPreferencesMigration$shouldMigrate$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sharedPreferencesMigration$shouldMigrate$1.label;
        boolean z10 = true;
        if (i12 == 0) {
            ResultKt.b(objInvoke);
            Function2 function2 = this.f8632a;
            sharedPreferencesMigration$shouldMigrate$1.L$0 = this;
            sharedPreferencesMigration$shouldMigrate$1.label = 1;
            objInvoke = function2.invoke(obj, sharedPreferencesMigration$shouldMigrate$1);
            if (objInvoke == objF) {
                return objF;
            }
            sharedPreferencesMigration = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sharedPreferencesMigration = (SharedPreferencesMigration) sharedPreferencesMigration$shouldMigrate$1.L$0;
            ResultKt.b(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return Boxing.a(false);
        }
        Set set = sharedPreferencesMigration.f8637f;
        if (set == null) {
            Map<String, ?> all = sharedPreferencesMigration.e().getAll();
            Intrinsics.g(all, "sharedPrefs.all");
            if (all.isEmpty()) {
                z10 = false;
            }
        } else {
            Set set2 = set;
            SharedPreferences sharedPreferencesE = sharedPreferencesMigration.e();
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                z10 = false;
            } else {
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    if (sharedPreferencesE.contains((String) it.next())) {
                    }
                }
                z10 = false;
            }
        }
        return Boxing.a(z10);
    }

    @Override // androidx.datastore.core.e
    public Object b(Continuation continuation) throws IOException {
        Context context;
        String str;
        SharedPreferences.Editor editorEdit = e().edit();
        Set set = this.f8637f;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            throw new IOException("Unable to delete migrated keys from SharedPreferences.");
        }
        if (e().getAll().isEmpty() && (context = this.f8634c) != null && (str = this.f8635d) != null) {
            d(context, str);
        }
        Set set2 = this.f8637f;
        if (set2 != null) {
            set2.clear();
        }
        return Unit.f67061a;
    }

    @Override // androidx.datastore.core.e
    public Object c(Object obj, Continuation continuation) {
        return this.f8633b.invoke(new b(e(), this.f8637f), obj, continuation);
    }
}
