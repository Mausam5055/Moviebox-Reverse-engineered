.class public final Lth/c;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/cardview/widget/CardView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextSwitcher;

.field public final g:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextSwitcher;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth/c;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lth/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lth/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lth/c;->d:Landroidx/cardview/widget/CardView;

    iput-object p5, p0, Lth/c;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lth/c;->f:Landroid/widget/TextSwitcher;

    iput-object p7, p0, Lth/c;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static native a(Landroid/view/View;)Lth/c;
.end method

.method public static native c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lth/c;
.end method


# virtual methods
.method public native b()Landroid/widget/LinearLayout;
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lth/c;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
