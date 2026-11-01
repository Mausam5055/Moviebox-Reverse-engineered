.class public final Lcom/transsion/usercenter/setting/labelsfeedback/h$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

.field private final c:Landroidx/appcompat/widget/AppCompatTextView;

.field private final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field private final e:Landroidx/appcompat/widget/AppCompatEditText;

.field private final f:Landroidx/appcompat/widget/AppCompatEditText;

.field final synthetic g:Lcom/transsion/usercenter/setting/labelsfeedback/h;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;Lfw/g0;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->g:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    invoke-virtual {p2}, Lfw/g0;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lfw/g0;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->a:Landroid/widget/LinearLayout;

    iget-object p1, p2, Lfw/g0;->d:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    iget-object p1, p2, Lfw/g0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "countTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lfw/g0;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object p1, p2, Lfw/g0;->c:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, "countryEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->e:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p1, p2, Lfw/g0;->f:Landroidx/appcompat/widget/AppCompatEditText;

    const-string p2, "phoneEditText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method


# virtual methods
.method public final f()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public final g()Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->e:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public final h()Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    return-object v0
.end method

.method public final i()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object v0
.end method

.method public final j()Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public final k()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
