.class public final Lcom/transsion/baselib/kids/KidsAccountManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/kids/KidsAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/kids/KidsAccountManager$a$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/baselib/kids/KidsAccountManager$a$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/kids/KidsAccountManager$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baselib/kids/KidsAccountManager$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baselib/kids/KidsAccountManager$a;->b:Lcom/transsion/baselib/kids/KidsAccountManager$a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/baselib/kids/KidsAccountManager$a;->a:I

    return-void
.end method
