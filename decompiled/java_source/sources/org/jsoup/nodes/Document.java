package org.jsoup.nodes;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: loaded from: classes7.dex */
public class Document extends Element {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private OutputSettings f71724j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private QuirksMode f71725k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f71726l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f71727m;

    public static class OutputSettings implements Cloneable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Charset f71729b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Entities.CoreCharset f71731d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Entities.EscapeMode f71728a = Entities.EscapeMode.base;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ThreadLocal f71730c = new ThreadLocal();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f71732e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f71733f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f71734g = 1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Syntax f71735h = Syntax.html;

        public enum Syntax {
            html,
            xml
        }

        public OutputSettings() {
            c(Charset.forName("UTF8"));
        }

        public Charset a() {
            return this.f71729b;
        }

        public OutputSettings b(String str) {
            c(Charset.forName(str));
            return this;
        }

        public OutputSettings c(Charset charset) {
            this.f71729b = charset;
            return this;
        }

        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.b(this.f71729b.name());
                outputSettings.f71728a = Entities.EscapeMode.valueOf(this.f71728a.name());
                return outputSettings;
            } catch (CloneNotSupportedException e11) {
                throw new RuntimeException(e11);
            }
        }

        CharsetEncoder f() {
            CharsetEncoder charsetEncoder = (CharsetEncoder) this.f71730c.get();
            return charsetEncoder != null ? charsetEncoder : k();
        }

        public Entities.EscapeMode g() {
            return this.f71728a;
        }

        public int i() {
            return this.f71734g;
        }

        public boolean j() {
            return this.f71733f;
        }

        CharsetEncoder k() {
            CharsetEncoder charsetEncoderNewEncoder = this.f71729b.newEncoder();
            this.f71730c.set(charsetEncoderNewEncoder);
            this.f71731d = Entities.CoreCharset.byName(charsetEncoderNewEncoder.charset().name());
            return charsetEncoderNewEncoder;
        }

        public boolean l() {
            return this.f71732e;
        }

        public Syntax m() {
            return this.f71735h;
        }

        public OutputSettings n(Syntax syntax) {
            this.f71735h = syntax;
            return this;
        }
    }

    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(org.jsoup.parser.f.l("#root", org.jsoup.parser.d.f71831c), str);
        this.f71724j = new OutputSettings();
        this.f71725k = QuirksMode.noQuirks;
        this.f71727m = false;
        this.f71726l = str;
    }

    private Element f1(String str, j jVar) {
        if (jVar.B().equals(str)) {
            return (Element) jVar;
        }
        int iN = jVar.n();
        for (int i11 = 0; i11 < iN; i11++) {
            Element elementF1 = f1(str, jVar.m(i11));
            if (elementF1 != null) {
                return elementF1;
            }
        }
        return null;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.j
    public String B() {
        return "#document";
    }

    @Override // org.jsoup.nodes.j
    public String D() {
        return super.B0();
    }

    @Override // org.jsoup.nodes.Element
    public Element X0(String str) {
        d1().X0(str);
        return this;
    }

    public Element d1() {
        return f1(TtmlNode.TAG_BODY, this);
    }

    @Override // org.jsoup.nodes.Element
    /* JADX INFO: renamed from: e1, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public Document q() {
        Document document = (Document) super.q();
        document.f71724j = this.f71724j.clone();
        return document;
    }

    public OutputSettings g1() {
        return this.f71724j;
    }

    public QuirksMode h1() {
        return this.f71725k;
    }

    public Document i1(QuirksMode quirksMode) {
        this.f71725k = quirksMode;
        return this;
    }

    public String j1() {
        Element elementFirst = y0(CampaignEx.JSON_KEY_TITLE).first();
        return elementFirst != null ? org.jsoup.helper.c.k(elementFirst.W0()).trim() : "";
    }
}
