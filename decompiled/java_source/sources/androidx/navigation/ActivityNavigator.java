package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ7\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, d2 = {"Landroidx/navigation/ActivityNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/ActivityNavigator$b;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "l", "()Landroidx/navigation/ActivityNavigator$b;", "", CampaignEx.JSON_KEY_AD_K, "()Z", "destination", "Landroid/os/Bundle;", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "Landroidx/navigation/l;", "navOptions", "Landroidx/navigation/Navigator$a;", "navigatorExtras", "Landroidx/navigation/NavDestination;", "m", "(Landroidx/navigation/ActivityNavigator$b;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Landroidx/navigation/NavDestination;", "c", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/app/Activity;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/app/Activity;", "hostActivity", "e", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Navigator.b("activity")
public class ActivityNavigator extends Navigator {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Activity hostActivity;

    /* JADX INFO: loaded from: classes2.dex */
    public static class b extends NavDestination {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Intent f13761l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f13762m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Navigator activityNavigator) {
            super(activityNavigator);
            Intrinsics.h(activityNavigator, "activityNavigator");
        }

        public final ComponentName A() {
            Intent intent = this.f13761l;
            if (intent == null) {
                return null;
            }
            return intent.getComponent();
        }

        public final String B() {
            return this.f13762m;
        }

        public final Intent C() {
            return this.f13761l;
        }

        public final b D(String str) {
            if (this.f13761l == null) {
                this.f13761l = new Intent();
            }
            Intent intent = this.f13761l;
            Intrinsics.e(intent);
            intent.setAction(str);
            return this;
        }

        public final b E(ComponentName componentName) {
            if (this.f13761l == null) {
                this.f13761l = new Intent();
            }
            Intent intent = this.f13761l;
            Intrinsics.e(intent);
            intent.setComponent(componentName);
            return this;
        }

        public final b F(Uri uri) {
            if (this.f13761l == null) {
                this.f13761l = new Intent();
            }
            Intent intent = this.f13761l;
            Intrinsics.e(intent);
            intent.setData(uri);
            return this;
        }

        public final b G(String str) {
            this.f13762m = str;
            return this;
        }

        public final b H(String str) {
            if (this.f13761l == null) {
                this.f13761l = new Intent();
            }
            Intent intent = this.f13761l;
            Intrinsics.e(intent);
            intent.setPackage(str);
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object obj) {
            boolean zBooleanValue;
            if (obj == null || !(obj instanceof b) || !super.equals(obj)) {
                return false;
            }
            Intent intent = this.f13761l;
            Boolean boolValueOf = intent == null ? null : Boolean.valueOf(intent.filterEquals(((b) obj).f13761l));
            if (boolValueOf == null) {
                zBooleanValue = ((b) obj).f13761l == null;
            } else {
                zBooleanValue = boolValueOf.booleanValue();
            }
            return zBooleanValue && Intrinsics.c(this.f13762m, ((b) obj).f13762m);
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int iHashCode = super.hashCode() * 31;
            Intent intent = this.f13761l;
            int iFilterHashCode = (iHashCode + (intent == null ? 0 : intent.filterHashCode())) * 31;
            String str = this.f13762m;
            return iFilterHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public void s(Context context, AttributeSet attrs) {
            Intrinsics.h(context, "context");
            Intrinsics.h(attrs, "attrs");
            super.s(context, attrs);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.ActivityNavigator);
            Intrinsics.g(typedArrayObtainAttributes, "context.resources.obtain…tyNavigator\n            )");
            String string = typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_targetPackage);
            if (string != null) {
                String packageName = context.getPackageName();
                Intrinsics.g(packageName, "context.packageName");
                string = StringsKt.Q(string, "${applicationId}", packageName, false, 4, null);
            }
            H(string);
            String string2 = typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_android_name);
            if (string2 != null) {
                if (string2.charAt(0) == '.') {
                    string2 = Intrinsics.q(context.getPackageName(), string2);
                }
                E(new ComponentName(context, string2));
            }
            D(typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_action));
            String string3 = typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_data);
            if (string3 != null) {
                F(Uri.parse(string3));
            }
            G(typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_dataPattern));
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public String toString() {
            ComponentName componentNameA = A();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(super.toString());
            if (componentNameA != null) {
                sb2.append(" class=");
                sb2.append(componentNameA.getClassName());
            } else {
                String strZ = z();
                if (strZ != null) {
                    sb2.append(" action=");
                    sb2.append(strZ);
                }
            }
            String string = sb2.toString();
            Intrinsics.g(string, "sb.toString()");
            return string;
        }

        @Override // androidx.navigation.NavDestination
        public boolean y() {
            return false;
        }

        public final String z() {
            Intent intent = this.f13761l;
            if (intent == null) {
                return null;
            }
            return intent.getAction();
        }
    }

    public ActivityNavigator(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        for (Object obj : SequencesKt.h(context, new Function1<Context, Context>() { // from class: androidx.navigation.ActivityNavigator$hostActivity$1
            @Override // kotlin.jvm.functions.Function1
            public final Context invoke(Context it) {
                Intrinsics.h(it, "it");
                if (it instanceof ContextWrapper) {
                    return ((ContextWrapper) it).getBaseContext();
                }
                return null;
            }
        })) {
            if (((Context) obj) instanceof Activity) {
                this.hostActivity = (Activity) obj;
            }
        }
        obj = null;
        this.hostActivity = (Activity) obj;
    }

    @Override // androidx.navigation.Navigator
    public boolean k() {
        Activity activity = this.hostActivity;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    @Override // androidx.navigation.Navigator
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b a() {
        return new b(this);
    }

    @Override // androidx.navigation.Navigator
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public NavDestination d(b destination, Bundle args, l navOptions, Navigator.a navigatorExtras) {
        Intent intent;
        int intExtra;
        Intrinsics.h(destination, "destination");
        if (destination.C() == null) {
            throw new IllegalStateException(("Destination " + destination.n() + " does not have an Intent set.").toString());
        }
        Intent intent2 = new Intent(destination.C());
        if (args != null) {
            intent2.putExtras(args);
            String strB = destination.B();
            if (strB != null && strB.length() != 0) {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(strB);
                while (matcher.find()) {
                    String strGroup = matcher.group(1);
                    if (!args.containsKey(strGroup)) {
                        throw new IllegalArgumentException("Could not find " + ((Object) strGroup) + " in " + args + " to fill data pattern " + ((Object) strB));
                    }
                    matcher.appendReplacement(stringBuffer, "");
                    stringBuffer.append(Uri.encode(String.valueOf(args.get(strGroup))));
                }
                matcher.appendTail(stringBuffer);
                intent2.setData(Uri.parse(stringBuffer.toString()));
            }
        }
        if (this.hostActivity == null) {
            intent2.addFlags(ASTNode.DEOP);
        }
        if (navOptions != null && navOptions.g()) {
            intent2.addFlags(ASTNode.DISCARD);
        }
        Activity activity = this.hostActivity;
        if (activity != null && (intent = activity.getIntent()) != null && (intExtra = intent.getIntExtra("android-support-navigation:ActivityNavigator:current", 0)) != 0) {
            intent2.putExtra("android-support-navigation:ActivityNavigator:source", intExtra);
        }
        intent2.putExtra("android-support-navigation:ActivityNavigator:current", destination.n());
        Resources resources = this.context.getResources();
        if (navOptions != null) {
            int iC = navOptions.c();
            int iD = navOptions.d();
            if ((iC <= 0 || !Intrinsics.c(resources.getResourceTypeName(iC), "animator")) && (iD <= 0 || !Intrinsics.c(resources.getResourceTypeName(iD), "animator"))) {
                intent2.putExtra("android-support-navigation:ActivityNavigator:popEnterAnim", iC);
                intent2.putExtra("android-support-navigation:ActivityNavigator:popExitAnim", iD);
            } else {
                Log.w("ActivityNavigator", "Activity destinations do not support Animator resource. Ignoring popEnter resource " + ((Object) resources.getResourceName(iC)) + " and popExit resource " + ((Object) resources.getResourceName(iD)) + " when launching " + destination);
            }
        }
        this.context.startActivity(intent2);
        if (navOptions == null || this.hostActivity == null) {
            return null;
        }
        int iA = navOptions.a();
        int iB = navOptions.b();
        if ((iA <= 0 || !Intrinsics.c(resources.getResourceTypeName(iA), "animator")) && (iB <= 0 || !Intrinsics.c(resources.getResourceTypeName(iB), "animator"))) {
            if (iA < 0 && iB < 0) {
                return null;
            }
            this.hostActivity.overridePendingTransition(RangesKt.f(iA, 0), RangesKt.f(iB, 0));
            return null;
        }
        Log.w("ActivityNavigator", "Activity destinations do not support Animator resource. Ignoring enter resource " + ((Object) resources.getResourceName(iA)) + " and exit resource " + ((Object) resources.getResourceName(iB)) + "when launching " + destination);
        return null;
    }
}
