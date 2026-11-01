.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lsx/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv_pugc/factory/f;->h(Landroidx/fragment/app/FragmentActivity;Lot/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpx/a;)Z
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->b:Lcom/transsion/postdetail/util/UGCShortTVFloatManager;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->m(Lpx/a;)Z

    move-result p1

    return p1
.end method

.method public b(Lpx/a;)V
    .locals 1

    invoke-static {p0, p1}, Lsx/a$a;->a(Lsx/a;Lpx/a;)V

    sget-object v0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->b:Lcom/transsion/postdetail/util/UGCShortTVFloatManager;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->k(Lpx/a;)V

    return-void
.end method

.method public c(Lpx/a;)V
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->b:Lcom/transsion/postdetail/util/UGCShortTVFloatManager;

    invoke-virtual {v0}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->j()V

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->n(Lpx/a;)V

    return-void
.end method
