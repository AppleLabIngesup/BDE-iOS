//
//  CIViewController.m
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewController.h"
#import "IIViewDeckController.h"
#import "CIHomeViewController.h"

@interface CIViewController ()

@end

@implementation CIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *partnerData = @[
    @{@"name" : @"Sejour Prague", @"img" : @"prague.png", @"date" : @"12/03/2013",
    @"description" : @"Com'In Prague pour 3 jours... Le trajet se fera en car (et oui... mais la bonne humeur sera de la partie^^) Départ de l'école jeudi 6 à 21h (arrivée le lendemain vers 11h) et retour même endroit le lundi 6h (il faudra dormir dans le car...) Une bagagerie sera mis en place à l'école pour garder vos affaires de cours..."},
    @{@"name" : @"Partenariat", @"img" : @"img2.png", @"date" : @"04/08/2013",
        @"description" : @"C'est grâce à eux que nous vous proposons tous ces voyages !"},
    @{@"name" : @"Sejour Venise", @"img" : @"venise.png", @"date" : @"10/05/2013",
        @"description" : @"Qui n'a jamais rêvé de faire un tour en gondole ou de participer au Carnaval de Venise ? Grâce au BDE Com'In, ce rêve devient réalité ! Nous vous proposons 2 nuits dans un hôtel 3 étoiles (chambres multiples) avec petits déjeuners et draps inclus."},
    @{@"name" : @"Roda do Cavaco", @"img" : @"roda.png", @"date" : @"11/01/2013",
        @"description" : @"Pour le 9ème Concours de Batucadas de Paris six formations de 20 percussionnistes s'affronteront sur la scène du Cabaret Sauvage dans une bataille jouissive mais impitoyable! Rythme, costumes, chorégraphie, mise en scène, tout sera passé au crible par notre jury composé de musiciens et journalistes experts."},
    ];
    
    CGSize scrollViewSize = CGSizeMake(self.scrollHome.bounds.size.width, 0);
    NSInteger i = 0;
    for (NSDictionary *d in partnerData)
    {
        CIHomeViewController *vc = [[CIHomeViewController alloc] initWithNibName:@"CIHomeViewController" bundle:nil];
        
        [vc.view setFrame:CGRectMake(vc.view.frame.origin.x + floor((self.scrollHome.bounds.size.width - vc.view.frame.size.width) / 2.f), vc.view.frame.origin.y + scrollViewSize.height + 8, vc.view.frame.size.width, vc.view.frame.size.height)];
        
        [vc.view setTag:i++];
        
        [self.scrollHome addSubview:vc.view];
        [vc.titleHome setFont:[UIFont fontWithName:@"freeversionSketchBlock-Bold" size:14.0]];
        [vc.titleHome setText:d[@"name"]];
        [vc.date setText:d[@"date"]];
        [vc.imageHome setImage:[UIImage imageNamed:d[@"img"]]];
        [vc.contentHome setText:d[@"description"]];
        
        scrollViewSize.height += vc.view.frame.size.height + 8;
    }
    
    [self.scrollHome setContentSize:scrollViewSize];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deckMenu:(id)sender {
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
- (void)viewDidUnload {
    [self setBackButton:nil];
    [super viewDidUnload];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


@end
