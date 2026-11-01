.class public Lcom/transsnet/loginapi/bean/DefaultSearch;
.super Lcom/transsnet/loginapi/bean/SearchFilter;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/loginapi/bean/SearchFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha(Ljava/lang/String;)C
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x23

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    return p1

    :cond_1
    return v1
.end method

.method public getFullSpell(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    invoke-virtual {p0, p1}, Lcom/transsnet/loginapi/bean/DefaultSearch;->getAlpha(Ljava/lang/String;)C

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p1, "|"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
