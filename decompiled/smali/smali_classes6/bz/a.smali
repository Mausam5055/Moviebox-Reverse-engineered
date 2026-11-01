.class public final Lbz/a;
.super Landroid/text/method/PasswordTransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbz/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lbz/a$a;

    invoke-direct {p2, p0, p1}, Lbz/a$a;-><init>(Lbz/a;Ljava/lang/CharSequence;)V

    return-object p2
.end method
