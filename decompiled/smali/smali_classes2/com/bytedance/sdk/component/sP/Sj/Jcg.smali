.class public final Lcom/bytedance/sdk/component/sP/Sj/Jcg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;
    }
.end annotation


# static fields
.field private static final EjP:[C


# instance fields
.field private final Dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Ljava/lang/String;

.field private final Jcg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final Sj:Ljava/lang/String;

.field private final TEQ:Ljava/lang/String;

.field final TKC:I

.field final sP:Ljava/lang/String;

.field private final uA:Ljava/lang/String;

.field private final vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->EjP:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->sP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->HiB:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->TKC:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->vS:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->EjP:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->sP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TKC:I

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->vS:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Jcg:Ljava/util/List;

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Jcg:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Dq:Ljava/util/List;

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Dq:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->uA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    return-void
.end method

.method public static Sj(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static Sj(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11

    move-object v1, p0

    move v3, p2

    move v2, p1

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x80

    if-lt v0, v4, :cond_0

    if-nez p7, :cond_1

    :cond_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v4, p3

    goto :goto_2

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const/16 v5, 0x25

    if-ne v0, v5, :cond_2

    if-eqz p4, :cond_4

    if-eqz p5, :cond_2

    invoke-static {p0, v2, p2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_4
    :goto_2
    new-instance v10, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    invoke-direct {v10}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;-><init>()V

    move v0, p1

    invoke-virtual {v10, p0, p1, v2}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(Ljava/lang/String;II)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    invoke-virtual {v10}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static Sj(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(Ljava/lang/String;II)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    invoke-static {v1, p0, v0, p2, p3}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;Ljava/lang/String;IIZ)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->TKC()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static Sj(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static Sj(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v3, p2}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static Sj(Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p5, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd

    if-eq v1, v2, :cond_9

    :cond_0
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    if-eqz p7, :cond_2

    if-eqz p5, :cond_1

    const-string v2, "+"

    goto :goto_1

    :cond_1
    const-string v2, "%2B"

    :goto_1
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    goto/16 :goto_5

    :cond_2
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_5

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_5

    const/16 v2, 0x80

    if-lt v1, v2, :cond_3

    if-nez p8, :cond_5

    :cond_3
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    if-ne v1, v3, :cond_4

    if-eqz p5, :cond_5

    if-eqz p6, :cond_4

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    goto :goto_5

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;-><init>()V

    :cond_6
    if-eqz p9, :cond_8

    sget-object v2, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj:Ljava/nio/charset/Charset;

    invoke-virtual {p9, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v2, p9}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    :goto_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->sP()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->sP(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    sget-object v5, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->EjP:[C

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->sP(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->sP(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    goto :goto_4

    :cond_9
    :goto_5
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method static Sj(Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;Ljava/lang/String;IIZ)V
    .locals 5

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(C)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->sP(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    move p2, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->sP(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/sP/Sj;

    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static Sj(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static Sj(Ljava/lang/String;II)Z
    .locals 2

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Jcg;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    move-result-object p0

    sget-object v2, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj$Sj;

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method static sP(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static sP(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public EjP()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(Ljava/lang/String;IIC)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public HiB()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Dq:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sj()Ljava/net/URL;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public TKC()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->vS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    iget-object p1, p1, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public sP()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->HiB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/sP/uA;->Sj(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->TEQ:Ljava/lang/String;

    return-object v0
.end method
