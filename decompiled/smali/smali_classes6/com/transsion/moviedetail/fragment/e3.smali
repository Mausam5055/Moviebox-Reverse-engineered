.class public final synthetic Lcom/transsion/moviedetail/fragment/e3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcn/u;


# direct methods
.method public synthetic constructor <init>(Lcn/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/e3;->a:Lcn/u;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/e3;->a:Lcn/u;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->a0(Lcn/u;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
