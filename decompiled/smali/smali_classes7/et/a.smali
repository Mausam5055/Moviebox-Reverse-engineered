.class public final synthetic Let/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Let/a;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Let/a;->a:Landroid/widget/ImageView;

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-static {v0, p1}, Let/b$a;->a(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
