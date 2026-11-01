.class public final Lcom/transsion/baseui/widget/jumpingbeans/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>([Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a;->a:[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>([Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;Landroid/widget/TextView;Lcom/transsion/baseui/widget/jumpingbeans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baseui/widget/jumpingbeans/a;-><init>([Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;Landroid/widget/TextView;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    new-instance v0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    invoke-direct {v0, p0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method
