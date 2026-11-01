.class public Lcom/pgl/ssdk/k0;
.super Ljava/lang/Object;


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "api16-access-ttp.tiktokpangle.us"

.field public static final d:[Ljava/lang/String;

.field private static e:I = -0x80000000

.field public static f:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "api16-access-ttp.tiktokpangle-b.us"

    const-string v1, "api16-access-ttp-b.tiktokpangle-b.us"

    const-string v2, "api16-access-ttp.tiktokpangle.us"

    const-string v3, "api16-access-ttp-b.tiktokpangle.us"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pgl/ssdk/k0;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/pgl/ssdk/k0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "VA"

    return-object v0

    :cond_0
    const-string v0, "SG"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/pgl/ssdk/k0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/pgl/ssdk/k0;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    sget v0, Lcom/pgl/ssdk/k0;->e:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    const-string v0, "domain_index"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/pgl/ssdk/k0;->e:I

    :cond_1
    sget-object p0, Lcom/pgl/ssdk/k0;->d:[Ljava/lang/String;

    sget v0, Lcom/pgl/ssdk/k0;->e:I

    array-length v1, p0

    rem-int/2addr v0, v1

    aget-object p0, p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    sget-object p0, Lcom/pgl/ssdk/k0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/pgl/ssdk/k0;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/pgl/ssdk/k0;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/pgl/ssdk/k0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/pgl/ssdk/k0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "updateIndex"

    invoke-static {v0}, Lcom/pgl/ssdk/r0;->a(Ljava/lang/String;)V

    sget v0, Lcom/pgl/ssdk/k0;->e:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pgl/ssdk/k0;->e:I

    const-string v1, "domain_index"

    invoke-static {p0, v1, v0}, Lcom/pgl/ssdk/u0;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    sput p0, Lcom/pgl/ssdk/k0;->e:I

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/pgl/ssdk/k0;->f:Ljava/lang/String;

    return-void
.end method
