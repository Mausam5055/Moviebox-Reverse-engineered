package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes7.dex */
final class MatcherMatchResult implements MatchResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matcher f67546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f67547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MatchGroupCollection f67548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f67549d;

    public MatcherMatchResult(Matcher matcher, CharSequence input) {
        Intrinsics.h(matcher, "matcher");
        Intrinsics.h(input, "input");
        this.f67546a = matcher;
        this.f67547b = input;
        this.f67548c = new MatcherMatchResult$groups$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final java.util.regex.MatchResult e() {
        return this.f67546a;
    }

    @Override // kotlin.text.MatchResult
    public List a() {
        if (this.f67549d == null) {
            this.f67549d = new AbstractList<String>() { // from class: kotlin.text.MatcherMatchResult$groupValues$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public final /* bridge */ boolean contains(Object obj) {
                    if (obj instanceof String) {
                        return e((String) obj);
                    }
                    return false;
                }

                public /* bridge */ boolean e(String str) {
                    return super.contains(str);
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public String get(int index) {
                    String strGroup = this.f67550a.e().group(index);
                    return strGroup == null ? "" : strGroup;
                }

                @Override // kotlin.collections.AbstractCollection
                /* JADX INFO: renamed from: getSize */
                public int get_size() {
                    return this.f67550a.e().groupCount() + 1;
                }

                public /* bridge */ int h(String str) {
                    return super.indexOf(str);
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int indexOf(Object obj) {
                    if (obj instanceof String) {
                        return h((String) obj);
                    }
                    return -1;
                }

                public /* bridge */ int j(String str) {
                    return super.lastIndexOf(str);
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int lastIndexOf(Object obj) {
                    if (obj instanceof String) {
                        return j((String) obj);
                    }
                    return -1;
                }
            };
        }
        List list = this.f67549d;
        Intrinsics.e(list);
        return list;
    }

    @Override // kotlin.text.MatchResult
    public IntRange b() {
        return RegexKt.h(e());
    }

    @Override // kotlin.text.MatchResult
    public MatchGroupCollection c() {
        return this.f67548c;
    }

    @Override // kotlin.text.MatchResult
    public MatchResult next() {
        int iEnd = e().end() + (e().end() == e().start() ? 1 : 0);
        if (iEnd > this.f67547b.length()) {
            return null;
        }
        Matcher matcher = this.f67546a.pattern().matcher(this.f67547b);
        Intrinsics.g(matcher, "matcher(...)");
        return RegexKt.f(matcher, iEnd, this.f67547b);
    }
}
