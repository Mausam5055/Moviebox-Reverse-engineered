.class public final Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;->a:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 5

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ShortTVFavoriteActivity --> onBackPress --> handleOnBackPressed() --> setResult(RESULT_OK)"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;->a:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;->finish()V

    return-void
.end method
