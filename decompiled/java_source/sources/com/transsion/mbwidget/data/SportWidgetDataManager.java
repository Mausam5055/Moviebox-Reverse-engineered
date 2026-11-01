package com.transsion.mbwidget.data;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.o;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.gslb.GslbSdk;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.y0;
import kotlinx.coroutines.o0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public final class SportWidgetDataManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile long f46247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f46248c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static SportMatch f46250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final y0 f46251f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final i1 f46252g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SportWidgetDataManager f46246a = new SportWidgetDataManager();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f46249d = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SportWidgetDataManager.n();
        }
    });

    static {
        y0 y0VarA = j1.a(null);
        f46251f = y0VarA;
        f46252g = y0VarA;
    }

    private SportWidgetDataManager() {
    }

    private final void d() {
        f46247b = 0L;
        int i11 = Build.VERSION.SDK_INT;
        Context contextCreateDeviceProtectedStorageContext = i11 >= 24 ? GslbSdk.context.createDeviceProtectedStorageContext() : GslbSdk.context;
        Intent intent = new Intent(contextCreateDeviceProtectedStorageContext, (Class<?>) SportWidgetRefreshReceiver.class);
        intent.setAction("com.transsion.mbwidget.ACTION_MATCH_REFRESH");
        PendingIntent broadcast = PendingIntent.getBroadcast(contextCreateDeviceProtectedStorageContext, 202603051, intent, i11 >= 31 ? 201326592 : ASTNode.NOJIT);
        Object systemService = contextCreateDeviceProtectedStorageContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
        AlarmManager alarmManager = systemService instanceof AlarmManager ? (AlarmManager) systemService : null;
        if (alarmManager != null) {
            alarmManager.cancel(broadcast);
        }
        lg.a.f68839a.c("SportWidget", "Cancel match refresh alarm", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        f46250e = null;
        kotlinx.coroutines.k.d(o0.a(kotlinx.coroutines.y0.b()), null, null, new SportWidgetDataManager$forceRefresh$1(null), 3, null);
    }

    private final SportMatch i() {
        try {
            String string = com.transsion.mbwidget.d.f46239a.k().getString("sport_widget_match_cache", null);
            if (string != null) {
                return (SportMatch) o.d(string, SportMatch.class);
            }
            return null;
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SportWidget", "Get cached match error: " + e11.getMessage(), e11, false, 8, null);
            return null;
        }
    }

    private final a j() {
        return (a) f46249d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a n() {
        return (a) zg.c.f79414e.a().h(a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, com.transsion.mbwidget.data.SportMatch] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30, types: [T, com.transsion.mbwidget.data.SportMatch, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object q(Continuation continuation) throws Throwable {
        SportWidgetDataManager$requestMatch$1 sportWidgetDataManager$requestMatch$1;
        Ref.ObjectRef objectRef;
        Ref.BooleanRef booleanRef;
        SportWidgetDataManager sportWidgetDataManager;
        Object objM454constructorimpl;
        ?? r11;
        SportMatch sportMatchB;
        if (continuation instanceof SportWidgetDataManager$requestMatch$1) {
            sportWidgetDataManager$requestMatch$1 = (SportWidgetDataManager$requestMatch$1) continuation;
            int i11 = sportWidgetDataManager$requestMatch$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sportWidgetDataManager$requestMatch$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sportWidgetDataManager$requestMatch$1 = new SportWidgetDataManager$requestMatch$1(this, continuation);
            }
        } else {
            sportWidgetDataManager$requestMatch$1 = new SportWidgetDataManager$requestMatch$1(this, continuation);
        }
        SportWidgetDataManager$requestMatch$1 sportWidgetDataManager$requestMatch$2 = sportWidgetDataManager$requestMatch$1;
        Object objA = sportWidgetDataManager$requestMatch$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sportWidgetDataManager$requestMatch$2.label;
        if (i12 == 0) {
            ResultKt.b(objA);
            if (f46248c) {
                lg.a.C0828a.f(lg.a.f68839a, "SportWidget", "[Lab] requestMatch started (laboratory trigger)", false, 4, null);
                f46248c = false;
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            try {
                Result.Companion companion = Result.INSTANCE;
                lg.a.f68839a.c("SportWidget", "Request match from API...", true);
                a aVarJ = j();
                sportWidgetDataManager$requestMatch$2.L$0 = objectRef2;
                sportWidgetDataManager$requestMatch$2.L$1 = booleanRef2;
                sportWidgetDataManager$requestMatch$2.L$2 = this;
                sportWidgetDataManager$requestMatch$2.label = 1;
                objA = a.C0636a.a(aVarJ, null, null, sportWidgetDataManager$requestMatch$2, 3, null);
                if (objA == objF) {
                    return objF;
                }
                sportWidgetDataManager = this;
                objectRef = objectRef2;
                booleanRef = booleanRef2;
            } catch (Throwable th2) {
                th = th2;
                objectRef = objectRef2;
                booleanRef = booleanRef2;
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            SportWidgetDataManager sportWidgetDataManager2 = (SportWidgetDataManager) sportWidgetDataManager$requestMatch$2.L$2;
            booleanRef = (Ref.BooleanRef) sportWidgetDataManager$requestMatch$2.L$1;
            objectRef = (Ref.ObjectRef) sportWidgetDataManager$requestMatch$2.L$0;
            try {
                ResultKt.b(objA);
                sportWidgetDataManager = sportWidgetDataManager2;
            } catch (Throwable th3) {
                th = th3;
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
            }
        }
        BaseDto baseDto = (BaseDto) objA;
        if (!Intrinsics.c(baseDto.getCode(), "0")) {
            baseDto = null;
        }
        BffMatchData bffMatchData = baseDto != null ? (BffMatchData) baseDto.getData() : null;
        if (bffMatchData != null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            List<ServerMatchItem> list = bffMatchData.getList();
            c0828a.c("SportWidget", "API request success, data list size: " + (list != null ? list.size() : 0), true);
            ServerMatchItem serverMatchItemA = c.a(bffMatchData.getList());
            if (serverMatchItemA != null) {
                sportMatchB = c.b(serverMatchItemA);
            } else {
                r11 = 0;
            }
            if (r11 != 0) {
                r11 = sportMatchB;
                sportWidgetDataManager.r(r11);
                f46250e = r11;
                f46251f.setValue(r11);
                c0828a.c("SportWidget", "Request match success: " + r11.getMatchId(), true);
                sportWidgetDataManager.s(r11);
                objectRef.element = r11;
            } else {
                r11 = sportMatchB;
                c0828a.c("SportWidget", "No valid match from API response (conversion failed or empty list)", true);
                f46250e = null;
                f46251f.setValue(null);
            }
        } else {
            lg.a.f68839a.c("SportWidget", "API response failed, need fallback", true);
            booleanRef.element = true;
        }
        objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.k(lg.a.f68839a, "SportWidget", "Request match error: " + thM457exceptionOrNullimpl.getMessage(), thM457exceptionOrNullimpl, false, 8, null);
            booleanRef.element = true;
        }
        if (objectRef.element == 0 && booleanRef.element) {
            lg.a.f68839a.c("SportWidget", "API failed, use fallback data (cache > mock)", true);
            objectRef.element = t();
        }
        return objectRef.element;
    }

    private final void r(SportMatch sportMatch) {
        try {
            com.transsion.mbwidget.d.f46239a.k().putString("sport_widget_match_cache", o.j(sportMatch));
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SportWidget", "Save cache error: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    private final void s(SportMatch sportMatch) {
        if (sportMatch.getStatus() == MatchStatus.NOT_START && sportMatch.getMatchTime() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long matchTime = sportMatch.getMatchTime() + 300000;
            long j11 = matchTime - jCurrentTimeMillis;
            if (j11 <= 0) {
                lg.a.f68839a.c("SportWidget", "Skip scheduleMatchRefresh: triggerAt=" + matchTime + ", now=" + jCurrentTimeMillis + ", delta=" + j11 + ", matchId=" + sportMatch.getMatchId() + ", status=" + sportMatch.getStatus(), true);
                return;
            }
            long j12 = f46247b;
            if (jCurrentTimeMillis + 1 <= j12 && j12 < matchTime) {
                lg.a.f68839a.c("SportWidget", "Skip scheduleMatchRefresh: keep earlier alarm at " + j12 + ", new trigger " + matchTime + " is later, matchId=" + sportMatch.getMatchId(), true);
                return;
            }
            int i11 = Build.VERSION.SDK_INT;
            Context contextCreateDeviceProtectedStorageContext = i11 >= 24 ? GslbSdk.context.createDeviceProtectedStorageContext() : GslbSdk.context;
            Intent intent = new Intent(contextCreateDeviceProtectedStorageContext, (Class<?>) SportWidgetRefreshReceiver.class);
            intent.setAction("com.transsion.mbwidget.ACTION_MATCH_REFRESH");
            PendingIntent broadcast = PendingIntent.getBroadcast(contextCreateDeviceProtectedStorageContext, 202603051, intent, i11 >= 31 ? 201326592 : ASTNode.NOJIT);
            Object systemService = contextCreateDeviceProtectedStorageContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
            AlarmManager alarmManager = systemService instanceof AlarmManager ? (AlarmManager) systemService : null;
            if (alarmManager != null) {
                alarmManager.setAndAllowWhileIdle(0, matchTime, broadcast);
                f46247b = matchTime;
            }
            lg.a.f68839a.c("SportWidget", "Schedule match refresh at " + matchTime + " (in " + j11 + "ms), matchId=" + sportMatch.getMatchId(), true);
        }
    }

    private final SportMatch t() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("SportWidget", "Using fallback data...", true);
        SportMatch sportMatchI = i();
        if (sportMatchI == null) {
            c0828a.c("SportWidget", "Mock fallback disabled, return null to show Fallback UI", true);
            return null;
        }
        c0828a.c("SportWidget", "Use cached match as fallback: " + sportMatchI.getMatchId(), true);
        f46250e = sportMatchI;
        f46251f.setValue(sportMatchI);
        s(sportMatchI);
        return sportMatchI;
    }

    public final void e() {
        f46250e = null;
        f46251f.setValue(null);
    }

    public final Object g(Continuation continuation) throws Throwable {
        lg.a.f68839a.c("SportWidget", "Force refresh for match change (periodic or after match start)", true);
        Object objQ = q(continuation);
        return objQ == IntrinsicsKt.f() ? objQ : Unit.f67061a;
    }

    public final void h() {
        f46248c = true;
        lg.a.f68839a.c("SportWidget", "[Lab] forceRefresh triggered from Laboratory", true);
        f();
    }

    public final Object k(Continuation continuation) {
        if (f46250e == null) {
            return q(continuation);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        SportMatch sportMatch = f46250e;
        c0828a.c("SportWidget", "Return memory cached match: " + (sportMatch != null ? sportMatch.getMatchId() : null), true);
        return f46250e;
    }

    public final boolean l(SportMatch sportMatch) {
        return sportMatch != null && d.f46268a.a(sportMatch);
    }

    public final boolean m(SportMatch sportMatch) {
        return sportMatch != null && d.f46268a.b(sportMatch);
    }

    public final void o() {
        lg.a.f68839a.c("SportWidget", "All sport widgets removed, clear memory and persistent cache", true);
        d();
        f46250e = null;
        f46251f.setValue(null);
        try {
            com.transsion.mbwidget.d.f46239a.k().remove("sport_widget_match_cache");
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SportWidget", "Clear persistent cache error: " + e11.getMessage(), e11, false, 8, null);
        }
    }

    public final void p() {
        lg.a.f68839a.c("SportWidget", "Refresh on user click (likely viewing live match)", true);
        kotlinx.coroutines.k.d(o0.a(kotlinx.coroutines.y0.c()), null, null, new SportWidgetDataManager$refreshOnUserClick$1(null), 3, null);
    }
}
