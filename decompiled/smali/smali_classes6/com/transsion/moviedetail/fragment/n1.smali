.class public final synthetic Lcom/transsion/moviedetail/fragment/n1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcn/o;


# direct methods
.method public synthetic constructor <init>(Lcn/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/n1;->a:Lcn/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/n1;->a:Lcn/o;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->a0(Lcn/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
