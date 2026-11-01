package kotlin.jvm.internal;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u00013B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB'\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\n\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u0010*\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00018\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u001f\u0010%\u0012\u0004\b(\u0010)\u001a\u0004\b&\u0010'R \u0010\t\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b*\u0010+\u0012\u0004\b-\u0010)\u001a\u0004\b,\u0010\u001aR\u001c\u00101\u001a\u00020\u0010*\u0006\u0012\u0002\b\u00030.8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u0010\r\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u00102¨\u00064"}, d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "Lkotlin/reflect/KClassifier;", "classifier", "", "Lkotlin/reflect/KTypeProjection;", "arguments", "platformTypeUpperBound", "", "flags", "<init>", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V", "", "isMarkedNullable", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "convertPrimitiveToWrapper", "", "i", "(Z)Ljava/lang/String;", "e", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "a", "Lkotlin/reflect/KClassifier;", "c", "()Lkotlin/reflect/KClassifier;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "h", "()Ljava/util/List;", "Lkotlin/reflect/KType;", "m", "()Lkotlin/reflect/KType;", "getPlatformTypeUpperBound$kotlin_stdlib$annotations", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "l", "getFlags$kotlin_stdlib$annotations", "Ljava/lang/Class;", CampaignEx.JSON_KEY_AD_K, "(Ljava/lang/Class;)Ljava/lang/String;", "arrayClassName", "()Z", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TypeReference implements KType {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final KClassifier classifier;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final List arguments;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final KType platformTypeUpperBound;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int flags;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f67300a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f67300a = iArr;
        }
    }

    public TypeReference(KClassifier classifier, List arguments, KType kType, int i11) {
        Intrinsics.h(classifier, "classifier");
        Intrinsics.h(arguments, "arguments");
        this.classifier = classifier;
        this.arguments = arguments;
        this.platformTypeUpperBound = kType;
        this.flags = i11;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TypeReference(KClassifier classifier, List arguments, boolean z10) {
        this(classifier, arguments, null, z10 ? 1 : 0);
        Intrinsics.h(classifier, "classifier");
        Intrinsics.h(arguments, "arguments");
    }

    private final String e(KTypeProjection kTypeProjection) {
        String strValueOf;
        if (kTypeProjection.getVariance() == null) {
            return "*";
        }
        KType type = kTypeProjection.getType();
        TypeReference typeReference = type instanceof TypeReference ? (TypeReference) type : null;
        if (typeReference == null || (strValueOf = typeReference.i(true)) == null) {
            strValueOf = String.valueOf(kTypeProjection.getType());
        }
        KVariance variance = kTypeProjection.getVariance();
        int i11 = variance == null ? -1 : WhenMappings.f67300a[variance.ordinal()];
        if (i11 == 1) {
            return strValueOf;
        }
        if (i11 == 2) {
            return "in " + strValueOf;
        }
        if (i11 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "out " + strValueOf;
    }

    private final String i(boolean convertPrimitiveToWrapper) {
        String name;
        KClassifier classifier = getClassifier();
        KClass kClass = classifier instanceof KClass ? (KClass) classifier : null;
        Class clsA = kClass != null ? JvmClassMappingKt.a(kClass) : null;
        if (clsA == null) {
            name = getClassifier().toString();
        } else if ((this.flags & 4) != 0) {
            name = "kotlin.Nothing";
        } else if (clsA.isArray()) {
            name = k(clsA);
        } else if (convertPrimitiveToWrapper && clsA.isPrimitive()) {
            KClassifier classifier2 = getClassifier();
            Intrinsics.f(classifier2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>");
            name = JvmClassMappingKt.b((KClass) classifier2).getName();
        } else {
            name = clsA.getName();
        }
        String str = name + (getArguments().isEmpty() ? "" : CollectionsKt.s0(getArguments(), ", ", "<", ">", 0, null, new Function1() { // from class: kotlin.jvm.internal.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TypeReference.j(this.f67319a, (KTypeProjection) obj);
            }
        }, 24, null)) + (a() ? UrlUtils.QUESTION_MARK : "");
        KType kType = this.platformTypeUpperBound;
        if (!(kType instanceof TypeReference)) {
            return str;
        }
        String strI = ((TypeReference) kType).i(true);
        if (Intrinsics.c(strI, str)) {
            return str;
        }
        if (Intrinsics.c(strI, str + '?')) {
            return str + '!';
        }
        return '(' + str + ".." + strI + ')';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence j(TypeReference typeReference, KTypeProjection it) {
        Intrinsics.h(it, "it");
        return typeReference.e(it);
    }

    private final String k(Class cls) {
        if (Intrinsics.c(cls, boolean[].class)) {
            return "kotlin.BooleanArray";
        }
        if (Intrinsics.c(cls, char[].class)) {
            return "kotlin.CharArray";
        }
        if (Intrinsics.c(cls, byte[].class)) {
            return "kotlin.ByteArray";
        }
        if (Intrinsics.c(cls, short[].class)) {
            return "kotlin.ShortArray";
        }
        if (Intrinsics.c(cls, int[].class)) {
            return "kotlin.IntArray";
        }
        if (Intrinsics.c(cls, float[].class)) {
            return "kotlin.FloatArray";
        }
        if (Intrinsics.c(cls, long[].class)) {
            return "kotlin.LongArray";
        }
        return Intrinsics.c(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    @Override // kotlin.reflect.KType
    public boolean a() {
        return (this.flags & 1) != 0;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: c, reason: from getter */
    public KClassifier getClassifier() {
        return this.classifier;
    }

    public boolean equals(Object other) {
        if (other instanceof TypeReference) {
            TypeReference typeReference = (TypeReference) other;
            if (Intrinsics.c(getClassifier(), typeReference.getClassifier()) && Intrinsics.c(getArguments(), typeReference.getArguments()) && Intrinsics.c(this.platformTypeUpperBound, typeReference.platformTypeUpperBound) && this.flags == typeReference.flags) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: h, reason: from getter */
    public List getArguments() {
        return this.arguments;
    }

    public int hashCode() {
        return (((getClassifier().hashCode() * 31) + getArguments().hashCode()) * 31) + this.flags;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final int getFlags() {
        return this.flags;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final KType getPlatformTypeUpperBound() {
        return this.platformTypeUpperBound;
    }

    public String toString() {
        return i(false) + " (Kotlin reflection is not available)";
    }
}
