.class Lcom/facebook/ads/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ads/B;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/ads/B;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/C;->a:Lcom/facebook/ads/B;

    iput-object p2, p0, Lcom/facebook/ads/C;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/facebook/ads/C;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
