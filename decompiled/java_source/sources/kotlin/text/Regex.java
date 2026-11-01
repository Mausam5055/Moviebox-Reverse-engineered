package kotlin.text;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.WasExperimental;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 22\u00060\u0001j\u0002`\u0002:\u000212B\u0011\b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\u0005\u0010\fB\u001f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e¢\u0006\u0004\b\u0005\u0010\u000fJ\u0011\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0086\u0004J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001f2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u0018J\u001a\u0010!\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001dH\u0007J\u0018\u0010#\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001dH\u0007J\u0016\u0010$\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\bJ\"\u0010$\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00180'J\u0016\u0010(\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\bJ\u001e\u0010)\u001a\b\u0012\u0004\u0012\u00020\b0*2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010+\u001a\u00020\u001dJ \u0010,\u001a\b\u0012\u0004\u0012\u00020\b0\u001f2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010+\u001a\u00020\u001dH\u0007J\b\u0010-\u001a\u00020\bH\u0016J\u0006\u0010.\u001a\u00020\u0004J\b\u0010/\u001a\u000200H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u00063"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "nativePattern", "Ljava/util/regex/Pattern;", "<init>", "(Ljava/util/regex/Pattern;)V", "pattern", "", "(Ljava/lang/String;)V", "option", "Lkotlin/text/RegexOption;", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "options", "", "(Ljava/lang/String;Ljava/util/Set;)V", "getPattern", "()Ljava/lang/String;", "_options", "getOptions", "()Ljava/util/Set;", "matches", "", "input", "", "containsMatchIn", "find", "Lkotlin/text/MatchResult;", "startIndex", "", "findAll", "Lkotlin/sequences/Sequence;", "matchEntire", "matchAt", "index", "matchesAt", "replace", "replacement", "transform", "Lkotlin/Function1;", "replaceFirst", "split", "", "limit", "splitToSequence", "toString", "toPattern", "writeReplace", "", "Serialized", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class Regex implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Set<? extends RegexOption> _options;
    private final Pattern nativePattern;

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/text/Regex$Companion;", "", "<init>", "()V", "", "flags", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(I)I", "", "literal", "c", "(Ljava/lang/String;)Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b(int flags) {
            return (flags & 2) != 0 ? flags | 64 : flags;
        }

        public final String c(String literal) {
            Intrinsics.h(literal, "literal");
            String strQuote = Pattern.quote(literal);
            Intrinsics.g(strQuote, "quote(...)");
            return strQuote;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u0000 \u000f2\u00060\u0001j\u0002`\u0002:\u0001\u000fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", "", "flags", "", "<init>", "(Ljava/lang/String;I)V", "getPattern", "()Ljava/lang/String;", "getFlags", "()I", "readResolve", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        private final int flags;
        private final String pattern;

        public Serialized(String pattern, int i11) {
            Intrinsics.h(pattern, "pattern");
            this.pattern = pattern;
            this.flags = i11;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.pattern, this.flags);
            Intrinsics.g(patternCompile, "compile(...)");
            return new Regex(patternCompile);
        }

        public final int getFlags() {
            return this.flags;
        }

        public final String getPattern() {
            return this.pattern;
        }
    }

    /* JADX INFO: renamed from: kotlin.text.Regex$findAll$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<MatchResult, MatchResult> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(1, MatchResult.class, "next", "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final MatchResult invoke(MatchResult p11) {
            Intrinsics.h(p11, "p0");
            return p11.next();
        }
    }

    /* JADX INFO: renamed from: kotlin.text.Regex$splitToSequence$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlin.text.Regex$splitToSequence$1", f = "Regex.kt", l = {279, MBSupportMuteAdType.INTERSTITIAL_VIDEO, 291}, m = "invokeSuspend")
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super String>, Continuation<? super Unit>, Object> {
        final /* synthetic */ CharSequence $input;
        final /* synthetic */ int $limit;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CharSequence charSequence, int i11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$input = charSequence;
            this.$limit = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = Regex.this.new AnonymousClass1(this.$input, this.$limit, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super String> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0070 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x007b  */
        /* JADX WARN: Code duplicated, block: B:27:0x009c A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x006e -> B:21:0x0071). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            SequenceScope sequenceScope;
            Matcher matcher;
            int i11;
            String string;
            String string2;
            Object objF = IntrinsicsKt.f();
            int i12 = this.label;
            if (i12 == 0) {
                ResultKt.b(obj);
                SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
                Matcher matcher2 = Regex.this.nativePattern.matcher(this.$input);
                if (this.$limit != 1 && matcher2.find()) {
                    int iEnd = 0;
                    sequenceScope = sequenceScope2;
                    matcher = matcher2;
                    i11 = 0;
                    string = this.$input.subSequence(iEnd, matcher.start()).toString();
                    this.L$0 = sequenceScope;
                    this.L$1 = matcher;
                    this.I$0 = i11;
                    this.label = 2;
                    if (sequenceScope.a(string, this) == objF) {
                        return objF;
                    }
                    iEnd = matcher.end();
                    i11++;
                    if (i11 != this.$limit - 1) {
                    }
                    CharSequence charSequence = this.$input;
                    string2 = charSequence.subSequence(iEnd, charSequence.length()).toString();
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 3;
                    if (sequenceScope.a(string2, this) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                }
                String string3 = this.$input.toString();
                this.label = 1;
                if (sequenceScope2.a(string3, this) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        i11 = this.I$0;
                        Matcher matcher3 = (Matcher) this.L$1;
                        sequenceScope = (SequenceScope) this.L$0;
                        ResultKt.b(obj);
                        matcher = matcher3;
                        iEnd = matcher.end();
                        i11++;
                        if (i11 != this.$limit - 1 || !matcher.find()) {
                            CharSequence charSequence2 = this.$input;
                            string2 = charSequence2.subSequence(iEnd, charSequence2.length()).toString();
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 3;
                            if (sequenceScope.a(string2, this) == objF) {
                                return objF;
                            }
                        }
                        string = this.$input.subSequence(iEnd, matcher.start()).toString();
                        this.L$0 = sequenceScope;
                        this.L$1 = matcher;
                        this.I$0 = i11;
                        this.label = 2;
                        if (sequenceScope.a(string, this) == objF) {
                            return objF;
                        }
                        iEnd = matcher.end();
                        i11++;
                        if (i11 != this.$limit - 1) {
                        }
                        CharSequence charSequence3 = this.$input;
                        string2 = charSequence3.subSequence(iEnd, charSequence3.length()).toString();
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        if (sequenceScope.a(string2, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (i12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f67061a;
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(String pattern) {
        Intrinsics.h(pattern, "pattern");
        Pattern patternCompile = Pattern.compile(pattern);
        Intrinsics.g(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(String pattern, Set<? extends RegexOption> options) {
        Intrinsics.h(pattern, "pattern");
        Intrinsics.h(options, "options");
        Pattern patternCompile = Pattern.compile(pattern, INSTANCE.b(RegexKt.j(options)));
        Intrinsics.g(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(String pattern, RegexOption option) {
        Intrinsics.h(pattern, "pattern");
        Intrinsics.h(option, "option");
        Pattern patternCompile = Pattern.compile(pattern, INSTANCE.b(option.getValue()));
        Intrinsics.g(patternCompile, "compile(...)");
        this(patternCompile);
    }

    @PublishedApi
    public Regex(Pattern nativePattern) {
        Intrinsics.h(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    public static /* synthetic */ MatchResult find$default(Regex regex, CharSequence charSequence, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return regex.find(charSequence, i11);
    }

    public static /* synthetic */ Sequence findAll$default(Regex regex, CharSequence charSequence, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return regex.findAll(charSequence, i11);
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return regex.split(charSequence, i11);
    }

    public static /* synthetic */ Sequence splitToSequence$default(Regex regex, CharSequence charSequence, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return regex.splitToSequence(charSequence, i11);
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        Intrinsics.g(strPattern, "pattern(...)");
        return new Serialized(strPattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(CharSequence input) {
        Intrinsics.h(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    public final MatchResult find(CharSequence input, int startIndex) {
        Intrinsics.h(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Intrinsics.g(matcher, "matcher(...)");
        return RegexKt.f(matcher, startIndex, input);
    }

    public final Sequence<MatchResult> findAll(final CharSequence input, final int startIndex) {
        Intrinsics.h(input, "input");
        if (startIndex >= 0 && startIndex <= input.length()) {
            return SequencesKt.j(new Function0() { // from class: kotlin.text.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f67567a.find(input, startIndex);
                }
            }, AnonymousClass2.INSTANCE);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + startIndex + ", input length: " + input.length());
    }

    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        final int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(RegexOption.class);
        Intrinsics.e(enumSetAllOf);
        CollectionsKt.N(enumSetAllOf, new Function1<RegexOption, Boolean>() { // from class: kotlin.text.Regex$special$$inlined$fromInt$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke(Enum r11) {
                d dVar = (d) r11;
                return Boolean.valueOf((iFlags & dVar.getMask()) == dVar.getValue());
            }
        });
        Set<RegexOption> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        Intrinsics.g(setUnmodifiableSet, "unmodifiableSet(...)");
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    public final String getPattern() {
        String strPattern = this.nativePattern.pattern();
        Intrinsics.g(strPattern, "pattern(...)");
        return strPattern;
    }

    @SinceKotlin
    @WasExperimental
    public final MatchResult matchAt(CharSequence input, int index) {
        Intrinsics.h(input, "input");
        Matcher matcherRegion = this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length());
        if (!matcherRegion.lookingAt()) {
            return null;
        }
        Intrinsics.e(matcherRegion);
        return new MatcherMatchResult(matcherRegion, input);
    }

    public final MatchResult matchEntire(CharSequence input) {
        Intrinsics.h(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Intrinsics.g(matcher, "matcher(...)");
        return RegexKt.g(matcher, input);
    }

    public final boolean matches(CharSequence input) {
        Intrinsics.h(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    @SinceKotlin
    @WasExperimental
    public final boolean matchesAt(CharSequence input, int index) {
        Intrinsics.h(input, "input");
        return this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length()).lookingAt();
    }

    public final String replace(CharSequence input, String replacement) {
        Intrinsics.h(input, "input");
        Intrinsics.h(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        Intrinsics.g(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    public final String replace(CharSequence input, Function1<? super MatchResult, ? extends CharSequence> transform) {
        Intrinsics.h(input, "input");
        Intrinsics.h(transform, "transform");
        int iIntValue = 0;
        MatchResult matchResultFind$default = find$default(this, input, 0, 2, null);
        if (matchResultFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb2 = new StringBuilder(length);
        do {
            sb2.append(input, iIntValue, matchResultFind$default.b().q().intValue());
            sb2.append((CharSequence) transform.invoke(matchResultFind$default));
            iIntValue = matchResultFind$default.b().p().intValue() + 1;
            matchResultFind$default = matchResultFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (matchResultFind$default != null);
        if (iIntValue < length) {
            sb2.append(input, iIntValue, length);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String replaceFirst(CharSequence input, String replacement) {
        Intrinsics.h(input, "input");
        Intrinsics.h(replacement, "replacement");
        String strReplaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        Intrinsics.g(strReplaceFirst, "replaceFirst(...)");
        return strReplaceFirst;
    }

    public final List<String> split(CharSequence input, int limit) {
        Intrinsics.h(input, "input");
        StringsKt__StringsKt.N0(limit);
        Matcher matcher = this.nativePattern.matcher(input);
        if (limit == 1 || !matcher.find()) {
            return CollectionsKt.e(input.toString());
        }
        ArrayList arrayList = new ArrayList(limit > 0 ? RangesKt.i(limit, 10) : 10);
        int i11 = limit - 1;
        int iEnd = 0;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i11 >= 0 && arrayList.size() == i11) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    @SinceKotlin
    @WasExperimental
    public final Sequence<String> splitToSequence(CharSequence input, int limit) {
        Intrinsics.h(input, "input");
        StringsKt__StringsKt.N0(limit);
        return SequencesKt.b(new AnonymousClass1(input, limit, null));
    }

    /* JADX INFO: renamed from: toPattern, reason: from getter */
    public final Pattern getNativePattern() {
        return this.nativePattern;
    }

    public String toString() {
        String string = this.nativePattern.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
