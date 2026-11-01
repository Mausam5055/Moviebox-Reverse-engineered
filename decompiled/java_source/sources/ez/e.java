package ez;

import com.vungle.ads.internal.util.q;
import java.util.List;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.h0;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class e {
    public static final b Companion = new b(null);
    private List<String> friends;
    private Float healthPercentile;
    private Float inGamePurchasesUSD;
    private Float levelPercentile;
    private String page;
    private Integer sessionDuration;
    private Integer sessionStartTime;
    private Integer signupDate;
    private Integer timeSpent;
    private String userID;
    private Float userLevelPercentile;
    private Float userScorePercentile;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final /* synthetic */ f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.SessionContext", aVar, 12);
            pluginGeneratedSerialDescriptor.l("level_percentile", true);
            pluginGeneratedSerialDescriptor.l("page", true);
            pluginGeneratedSerialDescriptor.l("time_spent", true);
            pluginGeneratedSerialDescriptor.l("signup_date", true);
            pluginGeneratedSerialDescriptor.l("user_score_percentile", true);
            pluginGeneratedSerialDescriptor.l("user_id", true);
            pluginGeneratedSerialDescriptor.l("friends", true);
            pluginGeneratedSerialDescriptor.l("user_level_percentile", true);
            pluginGeneratedSerialDescriptor.l("health_percentile", true);
            pluginGeneratedSerialDescriptor.l("session_start_time", true);
            pluginGeneratedSerialDescriptor.l("session_duration", true);
            pluginGeneratedSerialDescriptor.l("in_game_purchases_usd", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            h0 h0Var = h0.f68146a;
            kotlinx.serialization.b bVarS = d00.a.s(h0Var);
            b2 b2Var = b2.f68112a;
            kotlinx.serialization.b bVarS2 = d00.a.s(b2Var);
            r0 r0Var = r0.f68192a;
            return new kotlinx.serialization.b[]{bVarS, bVarS2, d00.a.s(r0Var), d00.a.s(r0Var), d00.a.s(h0Var), d00.a.s(b2Var), d00.a.s(new kotlinx.serialization.internal.f(b2Var)), d00.a.s(h0Var), d00.a.s(h0Var), d00.a.s(r0Var), d00.a.s(r0Var), d00.a.s(h0Var)};
        }

        @Override // kotlinx.serialization.a
        public e deserialize(e00.e decoder) {
            Object objN;
            Object objN2;
            Object obj;
            Object objN3;
            int i11;
            Object objN4;
            Object objN5;
            Object objN6;
            Object objN7;
            Object objN8;
            Object objN9;
            Object objN10;
            Object objN11;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            Object objN12 = null;
            if (cVarB.p()) {
                h0 h0Var = h0.f68146a;
                objN6 = cVarB.n(descriptor2, 0, h0Var, null);
                b2 b2Var = b2.f68112a;
                Object objN13 = cVarB.n(descriptor2, 1, b2Var, null);
                r0 r0Var = r0.f68192a;
                objN10 = cVarB.n(descriptor2, 2, r0Var, null);
                objN5 = cVarB.n(descriptor2, 3, r0Var, null);
                Object objN14 = cVarB.n(descriptor2, 4, h0Var, null);
                objN9 = cVarB.n(descriptor2, 5, b2Var, null);
                objN4 = cVarB.n(descriptor2, 6, new kotlinx.serialization.internal.f(b2Var), null);
                objN11 = cVarB.n(descriptor2, 7, h0Var, null);
                objN8 = cVarB.n(descriptor2, 8, h0Var, null);
                objN = cVarB.n(descriptor2, 9, r0Var, null);
                objN7 = cVarB.n(descriptor2, 10, r0Var, null);
                objN3 = cVarB.n(descriptor2, 11, h0Var, null);
                obj = objN13;
                objN2 = objN14;
                i11 = 4095;
            } else {
                boolean z10 = true;
                int i12 = 0;
                Object objN15 = null;
                Object objN16 = null;
                Object objN17 = null;
                objN = null;
                Object objN18 = null;
                Object objN19 = null;
                Object objN20 = null;
                Object objN21 = null;
                Object objN22 = null;
                objN2 = null;
                Object objN23 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            z10 = false;
                            objN12 = objN12;
                            objN15 = objN15;
                            break;
                        case 0:
                            i12 |= 1;
                            objN12 = cVarB.n(descriptor2, 0, h0.f68146a, objN12);
                            objN15 = objN15;
                            break;
                        case 1:
                            objN15 = cVarB.n(descriptor2, 1, b2.f68112a, objN15);
                            i12 |= 2;
                            objN12 = objN12;
                            break;
                        case 2:
                            objN16 = cVarB.n(descriptor2, 2, r0.f68192a, objN16);
                            i12 |= 4;
                            objN12 = objN12;
                            break;
                        case 3:
                            objN23 = cVarB.n(descriptor2, 3, r0.f68192a, objN23);
                            i12 |= 8;
                            objN12 = objN12;
                            break;
                        case 4:
                            objN2 = cVarB.n(descriptor2, 4, h0.f68146a, objN2);
                            i12 |= 16;
                            objN12 = objN12;
                            break;
                        case 5:
                            objN22 = cVarB.n(descriptor2, 5, b2.f68112a, objN22);
                            i12 |= 32;
                            objN12 = objN12;
                            break;
                        case 6:
                            objN19 = cVarB.n(descriptor2, 6, new kotlinx.serialization.internal.f(b2.f68112a), objN19);
                            i12 |= 64;
                            objN12 = objN12;
                            break;
                        case 7:
                            objN21 = cVarB.n(descriptor2, 7, h0.f68146a, objN21);
                            i12 |= 128;
                            objN12 = objN12;
                            break;
                        case 8:
                            objN18 = cVarB.n(descriptor2, 8, h0.f68146a, objN18);
                            i12 |= 256;
                            objN12 = objN12;
                            break;
                        case 9:
                            objN = cVarB.n(descriptor2, 9, r0.f68192a, objN);
                            i12 |= 512;
                            objN12 = objN12;
                            break;
                        case 10:
                            objN17 = cVarB.n(descriptor2, 10, r0.f68192a, objN17);
                            i12 |= 1024;
                            objN12 = objN12;
                            break;
                        case 11:
                            objN20 = cVarB.n(descriptor2, 11, h0.f68146a, objN20);
                            i12 |= 2048;
                            objN12 = objN12;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                obj = objN15;
                objN3 = objN20;
                Object obj2 = objN21;
                i11 = i12;
                objN4 = objN19;
                objN5 = objN23;
                objN6 = objN12;
                objN7 = objN17;
                objN8 = objN18;
                objN9 = objN22;
                objN10 = objN16;
                objN11 = obj2;
            }
            cVarB.c(descriptor2);
            return new e(i11, (Float) objN6, (String) obj, (Integer) objN10, (Integer) objN5, (Float) objN2, (String) objN9, (List) objN4, (Float) objN11, (Float) objN8, (Integer) objN, (Integer) objN7, (Float) objN3, null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, e value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            e.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }
    }

    public e() {
    }

    @Deprecated
    public /* synthetic */ e(int i11, Float f11, String str, Integer num, Integer num2, Float f12, String str2, List list, Float f13, Float f14, Integer num3, Integer num4, Float f15, w1 w1Var) {
        if ((i11 & 1) == 0) {
            this.levelPercentile = null;
        } else {
            this.levelPercentile = f11;
        }
        if ((i11 & 2) == 0) {
            this.page = null;
        } else {
            this.page = str;
        }
        if ((i11 & 4) == 0) {
            this.timeSpent = null;
        } else {
            this.timeSpent = num;
        }
        if ((i11 & 8) == 0) {
            this.signupDate = null;
        } else {
            this.signupDate = num2;
        }
        if ((i11 & 16) == 0) {
            this.userScorePercentile = null;
        } else {
            this.userScorePercentile = f12;
        }
        if ((i11 & 32) == 0) {
            this.userID = null;
        } else {
            this.userID = str2;
        }
        if ((i11 & 64) == 0) {
            this.friends = null;
        } else {
            this.friends = list;
        }
        if ((i11 & 128) == 0) {
            this.userLevelPercentile = null;
        } else {
            this.userLevelPercentile = f13;
        }
        if ((i11 & 256) == 0) {
            this.healthPercentile = null;
        } else {
            this.healthPercentile = f14;
        }
        if ((i11 & 512) == 0) {
            this.sessionStartTime = null;
        } else {
            this.sessionStartTime = num3;
        }
        if ((i11 & 1024) == 0) {
            this.sessionDuration = null;
        } else {
            this.sessionDuration = num4;
        }
        if ((i11 & 2048) == 0) {
            this.inGamePurchasesUSD = null;
        } else {
            this.inGamePurchasesUSD = f15;
        }
    }

    private static /* synthetic */ void getFriends$annotations() {
    }

    private static /* synthetic */ void getHealthPercentile$annotations() {
    }

    private static /* synthetic */ void getInGamePurchasesUSD$annotations() {
    }

    private static /* synthetic */ void getLevelPercentile$annotations() {
    }

    private static /* synthetic */ void getPage$annotations() {
    }

    private static /* synthetic */ void getSessionDuration$annotations() {
    }

    private static /* synthetic */ void getSessionStartTime$annotations() {
    }

    private static /* synthetic */ void getSignupDate$annotations() {
    }

    private static /* synthetic */ void getTimeSpent$annotations() {
    }

    private static /* synthetic */ void getUserID$annotations() {
    }

    private static /* synthetic */ void getUserLevelPercentile$annotations() {
    }

    private static /* synthetic */ void getUserScorePercentile$annotations() {
    }

    @JvmStatic
    public static final void write$Self(e self, e00.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.levelPercentile != null) {
            output.i(serialDesc, 0, h0.f68146a, self.levelPercentile);
        }
        if (output.z(serialDesc, 1) || self.page != null) {
            output.i(serialDesc, 1, b2.f68112a, self.page);
        }
        if (output.z(serialDesc, 2) || self.timeSpent != null) {
            output.i(serialDesc, 2, r0.f68192a, self.timeSpent);
        }
        if (output.z(serialDesc, 3) || self.signupDate != null) {
            output.i(serialDesc, 3, r0.f68192a, self.signupDate);
        }
        if (output.z(serialDesc, 4) || self.userScorePercentile != null) {
            output.i(serialDesc, 4, h0.f68146a, self.userScorePercentile);
        }
        if (output.z(serialDesc, 5) || self.userID != null) {
            output.i(serialDesc, 5, b2.f68112a, self.userID);
        }
        if (output.z(serialDesc, 6) || self.friends != null) {
            output.i(serialDesc, 6, new kotlinx.serialization.internal.f(b2.f68112a), self.friends);
        }
        if (output.z(serialDesc, 7) || self.userLevelPercentile != null) {
            output.i(serialDesc, 7, h0.f68146a, self.userLevelPercentile);
        }
        if (output.z(serialDesc, 8) || self.healthPercentile != null) {
            output.i(serialDesc, 8, h0.f68146a, self.healthPercentile);
        }
        if (output.z(serialDesc, 9) || self.sessionStartTime != null) {
            output.i(serialDesc, 9, r0.f68192a, self.sessionStartTime);
        }
        if (output.z(serialDesc, 10) || self.sessionDuration != null) {
            output.i(serialDesc, 10, r0.f68192a, self.sessionDuration);
        }
        if (!output.z(serialDesc, 11) && self.inGamePurchasesUSD == null) {
            return;
        }
        output.i(serialDesc, 11, h0.f68146a, self.inGamePurchasesUSD);
    }

    public final e setFriends(List<String> list) {
        this.friends = list != null ? CollectionsKt.U0(list) : null;
        return this;
    }

    public final e setHealthPercentile(float f11) {
        if (q.INSTANCE.isInRange(f11, 0.0f, 100.0f)) {
            this.healthPercentile = Float.valueOf(f11);
        }
        return this;
    }

    public final e setInGamePurchasesUSD(float f11) {
        if (q.isInRange$default(q.INSTANCE, f11, 0.0f, 0.0f, 4, (Object) null)) {
            this.inGamePurchasesUSD = Float.valueOf(f11);
        }
        return this;
    }

    public final e setLevelPercentile(float f11) {
        if (q.INSTANCE.isInRange(f11, 0.0f, 100.0f)) {
            this.levelPercentile = Float.valueOf(f11);
        }
        return this;
    }

    public final e setPage(String page) {
        Intrinsics.h(page, "page");
        this.page = page;
        return this;
    }

    public final e setSessionDuration(int i11) {
        this.sessionDuration = Integer.valueOf(i11);
        return this;
    }

    public final e setSessionStartTime(int i11) {
        this.sessionStartTime = Integer.valueOf(i11);
        return this;
    }

    public final e setSignupDate(int i11) {
        this.signupDate = Integer.valueOf(i11);
        return this;
    }

    public final e setTimeSpent(int i11) {
        this.timeSpent = Integer.valueOf(i11);
        return this;
    }

    public final e setUserID(String userID) {
        Intrinsics.h(userID, "userID");
        this.userID = userID;
        return this;
    }

    public final e setUserLevelPercentile(float f11) {
        if (q.INSTANCE.isInRange(f11, 0.0f, 100.0f)) {
            this.userLevelPercentile = Float.valueOf(f11);
        }
        return this;
    }

    public final e setUserScorePercentile(float f11) {
        if (q.INSTANCE.isInRange(f11, 0.0f, 100.0f)) {
            this.userScorePercentile = Float.valueOf(f11);
        }
        return this;
    }
}
