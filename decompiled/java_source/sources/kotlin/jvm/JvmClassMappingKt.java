package kotlin.jvm;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\"-\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00018G¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0004\"+\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\b\b\u0000\u0010\u0000*\u00020\b*\b\u0012\u0004\u0012\u00028\u00000\u00018F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0004\"+\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\u0000*\u00020\b*\b\u0012\u0004\u0012\u00028\u00000\u00028G¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"T", "Lkotlin/reflect/KClass;", "Ljava/lang/Class;", "a", "(Lkotlin/reflect/KClass;)Ljava/lang/Class;", "getJavaClass$annotations", "(Lkotlin/reflect/KClass;)V", "java", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "javaObjectType", "c", "(Ljava/lang/Class;)Lkotlin/reflect/KClass;", "kotlin", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class JvmClassMappingKt {
    public static final Class a(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
        Intrinsics.f(jClass, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return jClass;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class b(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
        if (!jClass.isPrimitive()) {
            Intrinsics.f(jClass, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return jClass;
        }
        String name = jClass.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    jClass = Double.class;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    jClass = Integer.class;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    jClass = Byte.class;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    jClass = Character.class;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    jClass = Long.class;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    jClass = Void.class;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    jClass = Boolean.class;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    jClass = Float.class;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    jClass = Short.class;
                }
                break;
        }
        Intrinsics.f(jClass, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return jClass;
    }

    public static final KClass c(Class cls) {
        Intrinsics.h(cls, "<this>");
        return Reflection.b(cls);
    }
}
