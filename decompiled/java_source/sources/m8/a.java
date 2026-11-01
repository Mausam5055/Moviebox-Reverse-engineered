package m8;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f69345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set f69346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static l8.a f69347c;

    static {
        HashSet hashSet = new HashSet(1);
        f69345a = hashSet;
        HashSet hashSet2 = new HashSet(2);
        f69346b = hashSet2;
        hashSet.add("1ww8E0AYsR2oX5lndk2hwp2Uosk=\n");
        hashSet.add("mOTdnSGD1SmegENz//Kn4cSHn14=\n");
        hashSet.add("H7hrEWjsdDFUBi6MnMWxcaS3zLQ=\n");
        hashSet.add("orAitN2YRTqgCPUHW8KJW7r1IUY=\n");
        hashSet.add("M5zdV8/VsUEWm2Ff8xQoeC0dpjk=\n");
        hashSet.add("9a0LzBrVbNFQclschmwwrZLvIbA=\n");
        hashSet.add("Avrz4pFDVGhgeFdpTfXkW2iFGGg=\n");
        hashSet.add("jDlu2bB0Rmqr47pjguyML79Aye0=\n");
        hashSet.add("WCsptscss8t/NCgA1DxvmnaolGk=\n");
        hashSet.add("oDHEZ4Lm5sZiwsh8dtqapizKvY4=\n");
        hashSet.add("yj/IKGD+GsjgDNPj6SzsWN2sLT0=\n");
        hashSet.add("BrJZJ8QqchYxwe/ZQx5kj6YuHjk=\n");
        hashSet.add("npmkiplgsUkmu387AuItorCrcoA=\n");
        hashSet.add("kX5zLTMPmhJAT3PYvqNpSLkp3/w=\n");
        hashSet2.add("toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n");
        hashSet2.add("3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n");
        hashSet2.add("B08QtE4yLCdli4rptyqAEczXOeA=\n");
        hashSet2.add("XZXI6anZbdKf+taURdnyUH5ipgM=\n");
        hashSet2.add("bhbUIW5tqP+DrjCAXQxkIyBbTZU=\n");
        hashSet2.add("UbxPdxcIz+UJ3enqpVSOkcBneFM=\n");
        hashSet2.add("4kx7eUDImQCtxhdmZFPeQvoM1ig=\n");
        hashSet2.add("SXxoaOSEzPC6BgGmxAt/EAcsajw=\n");
        hashSet2.add("blhOM3W9V/bVQhsWAcLYwPU6n24=\n");
        hashSet2.add("T5x9IXmcrQ7YuQxXnxoCmeeQ84c=\n");
        hashSet2.add("3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n");
        hashSet2.add("b7+z1e0c+vrbTfOzogbkyuNbLFM=\n");
        hashSet2.add("nw+owQDOD/aWeu/JoBj4apDZ3co=\n");
        hashSet2.add("rvde5sbMtJH1szWIuROLvT7cgSo=\n");
        hashSet2.add("QIN33WddQIcN4iqJBUUodfI23tQ=\n");
        hashSet2.add("jfAKrXw/TPNCdeLsGb3zKOIkaSI=\n");
        hashSet2.add("m2VirtEZk8KAfti3Hh8IwICjc08=\n");
        f69347c = null;
    }

    public static l8.a a() {
        l8.a aVar = f69347c;
        if (aVar != null) {
            return aVar;
        }
        l8.a aVar2 = new l8.a();
        c(aVar2);
        if (!b()) {
            aVar2.q(f69346b);
            aVar2.p(f69345a);
        }
        return aVar2;
    }

    public static boolean b() {
        return false;
    }

    private static void c(l8.a aVar) {
        if (!b()) {
            aVar.o(30000);
        } else {
            aVar.o(360000);
            aVar.r(120000);
        }
    }
}
