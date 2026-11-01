package ez;

import com.vungle.ads.fpd.AgeRange;
import com.vungle.ads.fpd.LengthOfResidence;
import com.vungle.ads.fpd.MedianHomeValueUSD;
import com.vungle.ads.fpd.MonthlyHousingCosts;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static final b Companion = new b(null);
    private Integer ageRange;
    private Integer lengthOfResidence;
    private Integer medianHomeValueUSD;
    private Integer monthlyHousingPaymentUSD;

    /* JADX INFO: renamed from: ez.a$a, reason: collision with other inner class name */
    public static final class C0751a implements i0 {
        public static final C0751a INSTANCE;
        public static final /* synthetic */ f descriptor;

        static {
            C0751a c0751a = new C0751a();
            INSTANCE = c0751a;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.Demographic", c0751a, 4);
            pluginGeneratedSerialDescriptor.l("age_range", true);
            pluginGeneratedSerialDescriptor.l("length_of_residence", true);
            pluginGeneratedSerialDescriptor.l("median_home_value_usd", true);
            pluginGeneratedSerialDescriptor.l("monthly_housing_payment_usd", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private C0751a() {
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            r0 r0Var = r0.f68192a;
            return new kotlinx.serialization.b[]{d00.a.s(r0Var), d00.a.s(r0Var), d00.a.s(r0Var), d00.a.s(r0Var)};
        }

        @Override // kotlinx.serialization.a
        public a deserialize(e00.e decoder) {
            Object objN;
            int i11;
            Object objN2;
            Object objN3;
            Object objN4;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            e00.c cVarB = decoder.b(descriptor2);
            Object objN5 = null;
            if (cVarB.p()) {
                r0 r0Var = r0.f68192a;
                objN2 = cVarB.n(descriptor2, 0, r0Var, null);
                objN3 = cVarB.n(descriptor2, 1, r0Var, null);
                Object objN6 = cVarB.n(descriptor2, 2, r0Var, null);
                objN4 = cVarB.n(descriptor2, 3, r0Var, null);
                objN = objN6;
                i11 = 15;
            } else {
                boolean z10 = true;
                int i12 = 0;
                Object objN7 = null;
                objN = null;
                Object objN8 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN5 = cVarB.n(descriptor2, 0, r0.f68192a, objN5);
                        i12 |= 1;
                    } else if (iO == 1) {
                        objN7 = cVarB.n(descriptor2, 1, r0.f68192a, objN7);
                        i12 |= 2;
                    } else if (iO == 2) {
                        objN = cVarB.n(descriptor2, 2, r0.f68192a, objN);
                        i12 |= 4;
                    } else {
                        if (iO != 3) {
                            throw new UnknownFieldException(iO);
                        }
                        objN8 = cVarB.n(descriptor2, 3, r0.f68192a, objN8);
                        i12 |= 8;
                    }
                }
                i11 = i12;
                objN2 = objN5;
                objN3 = objN7;
                objN4 = objN8;
            }
            cVarB.c(descriptor2);
            return new a(i11, (Integer) objN2, (Integer) objN3, (Integer) objN, (Integer) objN4, null);
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public f getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, a value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            e00.d dVarB = encoder.b(descriptor2);
            a.write$Self(value, dVarB, descriptor2);
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
            return C0751a.INSTANCE;
        }
    }

    public a() {
    }

    @Deprecated
    public /* synthetic */ a(int i11, Integer num, Integer num2, Integer num3, Integer num4, w1 w1Var) {
        if ((i11 & 1) == 0) {
            this.ageRange = null;
        } else {
            this.ageRange = num;
        }
        if ((i11 & 2) == 0) {
            this.lengthOfResidence = null;
        } else {
            this.lengthOfResidence = num2;
        }
        if ((i11 & 4) == 0) {
            this.medianHomeValueUSD = null;
        } else {
            this.medianHomeValueUSD = num3;
        }
        if ((i11 & 8) == 0) {
            this.monthlyHousingPaymentUSD = null;
        } else {
            this.monthlyHousingPaymentUSD = num4;
        }
    }

    private static /* synthetic */ void getAgeRange$annotations() {
    }

    private static /* synthetic */ void getLengthOfResidence$annotations() {
    }

    private static /* synthetic */ void getMedianHomeValueUSD$annotations() {
    }

    private static /* synthetic */ void getMonthlyHousingPaymentUSD$annotations() {
    }

    @JvmStatic
    public static final void write$Self(a self, e00.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.ageRange != null) {
            output.i(serialDesc, 0, r0.f68192a, self.ageRange);
        }
        if (output.z(serialDesc, 1) || self.lengthOfResidence != null) {
            output.i(serialDesc, 1, r0.f68192a, self.lengthOfResidence);
        }
        if (output.z(serialDesc, 2) || self.medianHomeValueUSD != null) {
            output.i(serialDesc, 2, r0.f68192a, self.medianHomeValueUSD);
        }
        if (!output.z(serialDesc, 3) && self.monthlyHousingPaymentUSD == null) {
            return;
        }
        output.i(serialDesc, 3, r0.f68192a, self.monthlyHousingPaymentUSD);
    }

    public final a setAgeRange(int i11) {
        this.ageRange = Integer.valueOf(AgeRange.INSTANCE.fromAge$vungle_ads_release(i11).getId());
        return this;
    }

    public final a setLengthOfResidence(int i11) {
        this.lengthOfResidence = Integer.valueOf(LengthOfResidence.INSTANCE.fromYears$vungle_ads_release(i11).getId());
        return this;
    }

    public final a setMedianHomeValueUSD(int i11) {
        this.medianHomeValueUSD = Integer.valueOf(MedianHomeValueUSD.INSTANCE.fromPrice$vungle_ads_release(i11).getId());
        return this;
    }

    public final a setMonthlyHousingCosts(int i11) {
        this.monthlyHousingPaymentUSD = Integer.valueOf(MonthlyHousingCosts.INSTANCE.fromCost$vungle_ads_release(i11).getId());
        return this;
    }
}
