.class public final Lcom/transsion/usercenter/profile/ProfileFragment$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileFragment;->lazyLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileFragment$c;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileFragment$c;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->y0(Lcom/transsion/usercenter/profile/ProfileFragment;I)V

    return-void
.end method
