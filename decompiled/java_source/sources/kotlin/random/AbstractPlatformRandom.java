package kotlin.random;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lkotlin/random/AbstractPlatformRandom;", "Lkotlin/random/Random;", "<init>", "()V", "", "bitCount", "nextBits", "(I)I", "nextInt", "()I", "until", "", "nextLong", "()J", "", "nextBoolean", "()Z", "", "nextDouble", "()D", "", "nextFloat", "()F", "", "array", "nextBytes", "([B)[B", "Ljava/util/Random;", "a", "()Ljava/util/Random;", "impl", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class AbstractPlatformRandom extends Random {
    public abstract java.util.Random a();

    @Override // kotlin.random.Random
    public int nextBits(int bitCount) {
        return RandomKt.g(a().nextInt(), bitCount);
    }

    @Override // kotlin.random.Random
    public boolean nextBoolean() {
        return a().nextBoolean();
    }

    @Override // kotlin.random.Random
    public byte[] nextBytes(byte[] array) {
        Intrinsics.h(array, "array");
        a().nextBytes(array);
        return array;
    }

    @Override // kotlin.random.Random
    public double nextDouble() {
        return a().nextDouble();
    }

    @Override // kotlin.random.Random
    public float nextFloat() {
        return a().nextFloat();
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        return a().nextInt();
    }

    @Override // kotlin.random.Random
    public int nextInt(int until) {
        return a().nextInt(until);
    }

    @Override // kotlin.random.Random
    public long nextLong() {
        return a().nextLong();
    }
}
