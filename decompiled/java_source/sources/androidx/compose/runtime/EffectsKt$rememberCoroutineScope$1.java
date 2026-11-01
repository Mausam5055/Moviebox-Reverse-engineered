package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
@SourceDebugExtension
public final class EffectsKt$rememberCoroutineScope$1 extends Lambda implements Function0<EmptyCoroutineContext> {
    public static final EffectsKt$rememberCoroutineScope$1 INSTANCE = new EffectsKt$rememberCoroutineScope$1();

    public EffectsKt$rememberCoroutineScope$1() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final EmptyCoroutineContext invoke() {
        return EmptyCoroutineContext.INSTANCE;
    }
}
