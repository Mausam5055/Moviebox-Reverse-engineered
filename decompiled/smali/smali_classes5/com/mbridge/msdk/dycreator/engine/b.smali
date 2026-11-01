.class public Lcom/mbridge/msdk/dycreator/engine/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile g:Lcom/mbridge/msdk/dycreator/engine/b;


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/dycreator/engine/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/dycreator/engine/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/dycreator/engine/b;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/engine/b;->g:Lcom/mbridge/msdk/dycreator/engine/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/dycreator/engine/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/b;->g:Lcom/mbridge/msdk/dycreator/engine/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/dycreator/engine/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/engine/b;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/dycreator/engine/b;->g:Lcom/mbridge/msdk/dycreator/engine/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/dycreator/engine/b;->g:Lcom/mbridge/msdk/dycreator/engine/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 5

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mbridge/msdk/dycreator/utils/e;->a(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    return v1
.end method

.method public a([Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/mbridge/msdk/dycreator/baseview/GradientOrientationUtils;->getOrientation(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    filled-new-array {v2, p1}, [I

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBResource"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/utils/e;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x140

    const-string v2, "/drawable-mdpi/"

    if-le v0, v1, :cond_1

    :try_start_1
    sget-boolean v0, Lcom/mbridge/msdk/dycreator/utils/g;->a:Z

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/mbridge/msdk/dycreator/engine/b;->e:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "/drawable-hdpi/"

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/mbridge/msdk/dycreator/engine/b;->e:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/engine/b;->d()Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBResource"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/mbridge/msdk/dycreator/utils/g;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/engine/b;->d:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/engine/b;->d:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/utils/e;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x140

    const-string v1, "/drawable-mdpi/"

    if-le p2, v0, :cond_2

    :try_start_1
    sget-boolean p2, Lcom/mbridge/msdk/dycreator/utils/g;->a:Z

    if-eqz p2, :cond_1

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p2, "/drawable-hdpi/"

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/engine/b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->e:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/engine/b;->d()Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBResource"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "@drawable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBResource"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x30

    :try_start_0
    const-string v1, "android.view.Gravity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->b:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->c:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->d:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->e:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_centerHorizontal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->f:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_centerVertical"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->l:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_marginLeft"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->m:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "layout_marginRight"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->q:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_margin"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->r:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_gravity"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->s:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_alignParentRight"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->x:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_weight"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->W:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "contentDescription"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->U:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "gravity"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->a:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "id"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->g:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_below"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->h:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_above"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->j:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_toLeftOf"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->i:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_toRightOf"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->k:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_toEndOf"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->Q:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "background"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->n:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_marginTop"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mbridge/msdk/dycreator/engine/c;->o:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v6, "layout_marginBottom"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->u:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignParentBottom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->v:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignParentTop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->t:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignParentLeft"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->w:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignWithParentIfMissing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->d0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignTop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->c0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignBottom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->f0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignLeft"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->g0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignRight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->e0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_centerInParent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->y:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_alignParentEnd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->a:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".R$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/dycreator/engine/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->c:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->a:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->G:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->H:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "ellipsize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->I:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "singleLine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->K:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "lines"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->J:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "maxLength"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->a0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "drawableLeft"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->b0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "drawablePadding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->L:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "fadingEdge"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->M:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "scrollHorizontally"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->N:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "textColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->O:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "textSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->P:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->Q:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->R:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "textStyle"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->S:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "style"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->b:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "layout_width"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->c:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "layout_height"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->g:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "layout_below"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->e0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "layout_centerInParent"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->W:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "contentDescription"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->T:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "src"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->U:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "gravity"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->d:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "orientation"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->V:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "numColumns"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->E:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "verticalSpacing"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/mbridge/msdk/dycreator/engine/c;->F:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v4, "horizontalSpacing"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->o:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_marginBottom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->X:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "scaleType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->Y:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->r:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "layout_gravity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->Z:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "parent_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->h0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "padding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->i0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "paddingTop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->j0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "paddingBottom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->k0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "paddingLeft"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->l0:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "paddingRight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->z:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "divider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->A:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "scrollbars"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mbridge/msdk/dycreator/engine/c;->B:Lcom/mbridge/msdk/dycreator/engine/c;

    const-string v2, "listSelector"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->c:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "#FF"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_0
    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_1
    const-string p1, "\u8fd4\u56de\u767d\u8272\u80cc\u666f"

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/utils/g;->a(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_2
    const-string v0, "@color/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "color"

    invoke-static {v1, p1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    :cond_3
    const/high16 p1, -0x1000000

    return p1
.end method

.method public d()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "rv_binddatas.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_1
    const-string v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "string"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    return-object v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/dycreator/engine/a;

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/engine/b;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/mbridge/msdk/dycreator/engine/a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/dycreator/utils/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/dycreator/engine/a;->a(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBResource"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->b:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/engine/b;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->b:Ljava/lang/ref/SoftReference;

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/engine/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    invoke-static {v1, p1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBResource"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
