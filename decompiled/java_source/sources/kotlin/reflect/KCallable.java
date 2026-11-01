package kotlin.reflect;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J'\u0010\u0006\u001a\u00028\u00002\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003\"\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\n\u001a\u00028\u00002\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00040\bH&¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\f8&X§\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0015\u0010\u000eR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00198&X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u001e8&X§\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0017\u001a\u0004\b\u001f\u0010 R\u001a\u0010\"\u001a\u00020\u001e8&X§\u0004¢\u0006\f\u0012\u0004\b#\u0010\u0017\u001a\u0004\b\"\u0010 R\u001a\u0010$\u001a\u00020\u001e8&X§\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0017\u001a\u0004\b$\u0010 R\u001a\u0010&\u001a\u00020\u001e8&X§\u0004¢\u0006\f\u0012\u0004\b'\u0010\u0017\u001a\u0004\b&\u0010 ¨\u0006("}, d2 = {"Lkotlin/reflect/KCallable;", "R", "Lkotlin/reflect/KAnnotatedElement;", "", "", NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, "call", "([Ljava/lang/Object;)Ljava/lang/Object;", "", "Lkotlin/reflect/KParameter;", "callBy", "(Ljava/util/Map;)Ljava/lang/Object;", "", "getParameters", "()Ljava/util/List;", "parameters", "Lkotlin/reflect/KType;", "getReturnType", "()Lkotlin/reflect/KType;", "returnType", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "getTypeParameters$annotations", "()V", "typeParameters", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "visibility", "", "isFinal", "()Z", "isFinal$annotations", "isOpen", "isOpen$annotations", "isAbstract", "isAbstract$annotations", "isSuspend", "isSuspend$annotations", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface KCallable<R> extends KAnnotatedElement {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
    }

    Object call(Object... args);

    Object callBy(Map args);

    List getParameters();

    KType getReturnType();

    List getTypeParameters();

    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
