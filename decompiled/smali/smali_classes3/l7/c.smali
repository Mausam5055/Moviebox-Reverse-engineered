.class public final Ll7/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ll7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll7/c;

    invoke-direct {v0}, Ll7/c;-><init>()V

    sput-object v0, Ll7/c;->a:Ll7/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Ll7/b;->a:Ll7/b;

    invoke-virtual {v0, p0}, Ll7/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final b([B)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_1

    sget-object v1, Ll7/c;->a:Ll7/c;

    invoke-direct {v1, p0}, Ll7/c;->c([B)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v1, Ll7/c;->a:Ll7/c;

    invoke-direct {v1, p0}, Ll7/c;->d([B)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrawableFromData failed, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "HisavanaImageRender"

    invoke-virtual {v1, v2, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final c([B)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Ll7/b;->a:Ll7/b;

    invoke-virtual {v0, p1}, Ll7/b;->c([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ll7/a;->a:Ll7/a;

    invoke-virtual {v0, p1}, Ll7/a;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ll7/c;->d([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final d([B)Landroid/graphics/drawable/Drawable;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static final e()V
    .locals 1

    sget-object v0, Ll7/b;->a:Ll7/b;

    invoke-virtual {v0}, Ll7/b;->f()V

    sget-object v0, Ll7/a;->a:Ll7/a;

    invoke-virtual {v0}, Ll7/a;->b()V

    return-void
.end method
