.class public final Lcom/iab/omid/library/mmadbridge/adsession/media/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Float;

.field private final c:Z

.field private final d:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;


# direct methods
.method private constructor <init>(ZLjava/lang/Float;ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->a:Z

    iput-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->b:Ljava/lang/Float;

    iput-boolean p3, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->c:Z

    iput-object p4, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->d:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    return-void
.end method

.method public static b(ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)Lcom/iab/omid/library/mmadbridge/adsession/media/b;
    .locals 3

    const-string v0, "Position is null"

    invoke-static {p1, v0}, Loe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/b;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "skippable"

    iget-boolean v2, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "skipOffset"

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "autoPlay"

    iget-boolean v2, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "position"

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->d:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "VastProperties: JSON error"

    invoke-static {v2, v1}, Loe/d;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-object v0
.end method
