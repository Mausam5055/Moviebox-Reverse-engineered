.class public Lo4/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lp4/h;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/res/AssetManager;

.field private e:Lcom/airbnb/lottie/a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp4/h;

    invoke-direct {v0}, Lp4/h;-><init>()V

    iput-object v0, p0, Lo4/a;->a:Lp4/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo4/a;->c:Ljava/util/Map;

    const-string v0, ".ttf"

    iput-object v0, p0, Lo4/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lo4/a;->e:Lcom/airbnb/lottie/a;

    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lv4/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo4/a;->d:Landroid/content/res/AssetManager;

    return-void

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lo4/a;->d:Landroid/content/res/AssetManager;

    return-void
.end method

.method private a(Lp4/b;)Landroid/graphics/Typeface;
    .locals 5

    invoke-virtual {p1}, Lp4/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo4/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lp4/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lp4/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo4/a;->e:Lcom/airbnb/lottie/a;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0, v1, v2}, Lcom/airbnb/lottie/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lo4/a;->e:Lcom/airbnb/lottie/a;

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/a;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    iget-object v4, p0, Lo4/a;->e:Lcom/airbnb/lottie/a;

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {v4, v0, v1, v2}, Lcom/airbnb/lottie/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lo4/a;->e:Lcom/airbnb/lottie/a;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lo4/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_4
    invoke-virtual {p1}, Lp4/b;->d()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lp4/b;->d()Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez v3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo4/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_6
    iget-object p1, p0, Lo4/a;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method private e(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "Italic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Bold"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object p1

    :cond_3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Lp4/b;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lo4/a;->a:Lp4/h;

    invoke-virtual {p1}, Lp4/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lp4/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lp4/h;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    iget-object v1, p0, Lo4/a;->a:Lp4/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lo4/a;->a(Lp4/b;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Lp4/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo4/a;->e(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    iget-object v1, p0, Lo4/a;->a:Lp4/h;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo4/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Lcom/airbnb/lottie/a;)V
    .locals 0

    iput-object p1, p0, Lo4/a;->e:Lcom/airbnb/lottie/a;

    return-void
.end method
