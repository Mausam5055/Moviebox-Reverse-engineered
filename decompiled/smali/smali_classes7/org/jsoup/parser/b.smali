.class public Lorg/jsoup/parser/b;
.super Lorg/jsoup/parser/i;


# static fields
.field static final A:[Ljava/lang/String;

.field static final B:[Ljava/lang/String;

.field static final C:[Ljava/lang/String;

.field static final D:[Ljava/lang/String;

.field static final x:[Ljava/lang/String;

.field static final y:[Ljava/lang/String;

.field static final z:[Ljava/lang/String;


# instance fields
.field private k:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private l:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private m:Z

.field private n:Lorg/jsoup/nodes/Element;

.field private o:Lorg/jsoup/nodes/h;

.field private p:Lorg/jsoup/nodes/Element;

.field private q:Ljava/util/ArrayList;

.field private r:Ljava/util/List;

.field private s:Lorg/jsoup/parser/Token$g;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    const-string v6, "td"

    const-string v7, "th"

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->x:[Ljava/lang/String;

    const-string v0, "ol"

    const-string v1, "ul"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->y:[Ljava/lang/String;

    const-string v0, "button"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->z:[Ljava/lang/String;

    const-string v0, "html"

    const-string v1, "table"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->A:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->B:[Ljava/lang/String;

    const-string v7, "rp"

    const-string v8, "rt"

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "optgroup"

    const-string v5, "option"

    const-string v6, "p"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->C:[Ljava/lang/String;

    const-string v78, "wbr"

    const-string v79, "xmp"

    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string v63, "script"

    const-string v64, "section"

    const-string v65, "select"

    const-string v66, "style"

    const-string v67, "summary"

    const-string v68, "table"

    const-string v69, "tbody"

    const-string v70, "td"

    const-string v71, "textarea"

    const-string v72, "tfoot"

    const-string v73, "th"

    const-string v74, "thead"

    const-string v75, "title"

    const-string v76, "tr"

    const-string v77, "ul"

    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/i;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/b;->w:[Ljava/lang/String;

    return-void
.end method

.method private I(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->w:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/parser/b;->J([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private J([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x65

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_4

    iget-object v2, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {v2, p2}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v2, p3}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private T(Lorg/jsoup/nodes/j;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->R(Lorg/jsoup/nodes/j;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    :goto_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->T0()Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->d1(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/h;

    :cond_2
    return-void
.end method

.method private W(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private varargs l([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private v0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method A()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/List;

    return-object v0
.end method

.method A0(Lorg/jsoup/nodes/Element;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method B()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method B0()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method C(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/b;->z:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/b;->F(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method D(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/b;->y:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/b;->F(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method E(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/b;->F(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method F(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/b;->x:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method G([Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/b;->x:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/b;->J([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method H(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    sget-object v4, Lorg/jsoup/parser/b;->B:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string p1, "Should not be reachable"

    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    return v2
.end method

.method K(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/b;->A:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    iget-object v1, p0, Lorg/jsoup/parser/b;->s:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->E()Lorg/jsoup/parser/Token$i;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->U0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/h;->k(Lorg/jsoup/parser/Token;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-static {v1, v2}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, p1}, Lorg/jsoup/parser/d;->a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->M(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method M(Lorg/jsoup/nodes/Element;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jsoup/parser/b;->T(Lorg/jsoup/nodes/j;)V

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method N(Lorg/jsoup/parser/Token$c;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/jsoup/nodes/d;

    invoke-direct {p1, v1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "script"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/jsoup/nodes/l;

    invoke-direct {p1, v1}, Lorg/jsoup/nodes/l;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Lorg/jsoup/nodes/f;

    invoke-direct {p1, v1}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method O(Lorg/jsoup/parser/Token$d;)V
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/e;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->T(Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-static {v0, v1}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-direct {p0, v1}, Lorg/jsoup/parser/b;->T(Lorg/jsoup/nodes/j;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->d()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/h;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/f;->j()Lorg/jsoup/parser/f;

    :cond_1
    :goto_0
    return-object v1
.end method

.method Q(Lorg/jsoup/parser/Token$h;Z)Lorg/jsoup/nodes/h;
    .locals 3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-static {v0, v1}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/h;

    iget-object v2, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    invoke-direct {v1, v0, v2, p1}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/b;->y0(Lorg/jsoup/nodes/h;)V

    invoke-direct {p0, v1}, Lorg/jsoup/parser/b;->T(Lorg/jsoup/nodes/j;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method R(Lorg/jsoup/nodes/j;)V
    .locals 4

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->y(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->j(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->l0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    :goto_1
    return-void
.end method

.method S()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method U(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method V(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-static {p1, v1}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object p1

    iget-object v1, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->M(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method X()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->u:Z

    return v0
.end method

.method Y()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->v:Z

    return v0
.end method

.method Z(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/b;->W(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method b()Lorg/jsoup/parser/d;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/d;->c:Lorg/jsoup/parser/d;

    return-object v0
.end method

.method b0(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/jsoup/parser/b;->D:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/i;->c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V

    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object p1, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/jsoup/parser/b;->m:Z

    iput-object p1, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/nodes/Element;

    iput-object p1, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/h;

    iput-object p1, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/Element;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/List;

    new-instance p1, Lorg/jsoup/parser/Token$g;

    invoke-direct {p1}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->s:Lorg/jsoup/parser/Token$g;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/parser/b;->t:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/b;->u:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/b;->v:Z

    return-void
.end method

.method c0()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method d0()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method protected e(Lorg/jsoup/parser/Token;)Z
    .locals 1

    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    iget-object v0, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1
.end method

.method e0(Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/b;->m:Z

    iget-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/j;->S(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method f0()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/List;

    return-void
.end method

.method g0(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/b;->W(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/i;->h(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    move-result p1

    return p1
.end method

.method h0()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method i0(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)Ljava/util/List;
    .locals 4

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/jsoup/parser/b;->c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V

    iput-object p2, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/Element;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/parser/b;->v:Z

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/jsoup/nodes/j;->H()Lorg/jsoup/nodes/Document;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lorg/jsoup/nodes/j;->H()Lorg/jsoup/nodes/Document;

    move-result-object p4

    invoke-virtual {p4}, Lorg/jsoup/nodes/Document;->h1()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/jsoup/nodes/Document;->i1(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->U0()Ljava/lang/String;

    move-result-object p1

    const-string p4, "title"

    const-string v0, "textarea"

    filled-new-array {p4, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object p4, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p4}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    const-string p4, "style"

    const-string v0, "xmp"

    const-string v1, "iframe"

    const-string v2, "noembed"

    const-string v3, "noframes"

    filled-new-array {v1, v2, v3, p4, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object p4, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p4}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    const-string p4, "script"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object p4, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p4}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_3
    const-string p4, "noscript"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object p4, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p4}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_4
    const-string p4, "plaintext"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object p4, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p4}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object p4, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p4}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    new-instance p1, Lorg/jsoup/nodes/Element;

    const-string p4, "html"

    invoke-static {p4, p5}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object p4

    invoke-direct {p1, p4, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {p3, p1}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    iget-object p3, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/jsoup/parser/b;->x0()V

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->M0()Lorg/jsoup/select/Elements;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/jsoup/nodes/Element;

    instance-of p5, p4, Lorg/jsoup/nodes/h;

    if-eqz p5, :cond_6

    check-cast p4, Lorg/jsoup/nodes/h;

    iput-object p4, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/h;

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/i;->i()V

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lorg/jsoup/nodes/j;->o()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/j;->o()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method j(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method j0()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method k()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/b;->t0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method k0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method l0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method m()V
    .locals 4

    const-string v0, "thead"

    const-string v1, "template"

    const-string v2, "tbody"

    const-string v3, "tfoot"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->l([Ljava/lang/String;)V

    return-void
.end method

.method varargs m0([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method n()V
    .locals 1

    const-string v0, "table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->l([Ljava/lang/String;)V

    return-void
.end method

.method n0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1
.end method

.method o()V
    .locals 2

    const-string v0, "tr"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->l([Ljava/lang/String;)V

    return-void
.end method

.method o0(Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/c;

    iget-object v2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->F()I

    move-result v2

    iget-object v3, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const-string p1, "Unexpected token [%s] when in state [%s]"

    invoke-direct {v1, v2, p1, v4}, Lorg/jsoup/parser/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method p0(Lorg/jsoup/nodes/Element;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method q(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/b;->t:Z

    return-void
.end method

.method q0()V
    .locals 7

    invoke-virtual {p0}, Lorg/jsoup/parser/b;->c0()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->g0(Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->g0(Lorg/jsoup/nodes/Element;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move v2, v4

    :goto_0
    if-nez v2, :cond_4

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    :cond_4
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/b;->V(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/b;->e(Lorg/jsoup/nodes/b;)V

    iget-object v5, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v1, :cond_3

    :cond_5
    :goto_1
    return-void
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->t:Z

    return v0
.end method

.method r0(Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method s()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->t(Ljava/lang/String;)V

    return-void
.end method

.method s0(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method t(Ljava/lang/String;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/b;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/b;->j0()Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-void
.end method

.method t0()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/i;->f:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/b;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method u0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/parser/b;->v0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method w()Lorg/jsoup/nodes/Document;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method w0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/parser/b;->v0(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method x()Lorg/jsoup/nodes/h;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method x0()V
    .locals 5

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_f

    iget-object v3, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/Element;

    move v2, v1

    :cond_0
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v3

    const-string v4, "select"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_3

    :cond_1
    const-string v4, "td"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_3

    :cond_3
    const-string v4, "tbody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v4, "caption"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_3

    :cond_5
    const-string v4, "colgroup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_6
    const-string v4, "table"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_7
    const-string v4, "head"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_8
    const-string v4, "body"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_9
    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_a
    const-string v4, "html"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_d
    :goto_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_3

    :cond_e
    :goto_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_f
    :goto_3
    return-void
.end method

.method y(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method y0(Lorg/jsoup/nodes/h;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/h;

    return-void
.end method

.method z()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->n:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/b;->u:Z

    return-void
.end method
