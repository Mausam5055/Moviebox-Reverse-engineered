.class public final synthetic Lcom/transsion/videodetail/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/o;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/o;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->t0(Lcom/transsion/videodetail/StreamDetailFragment;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
