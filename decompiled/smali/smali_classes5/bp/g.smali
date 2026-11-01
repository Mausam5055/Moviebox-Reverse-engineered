.class public final synthetic Lbp/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp/g;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbp/g;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p1}, Lbp/h;->y(Lcom/google/android/material/imageview/ShapeableImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
