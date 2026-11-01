.class final synthetic Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/guide/AddWidgetDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Boolean;",
        "Ltm/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;

    invoke-direct {v0}, Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;->INSTANCE:Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-string v4, "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/mbwidget/databinding/DialogWidgetAddBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Ltm/b;

    const-string v3, "inflate"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/mbwidget/guide/AddWidgetDialog$1;->invoke(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltm/b;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltm/b;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Ltm/b;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltm/b;

    move-result-object p1

    return-object p1
.end method
