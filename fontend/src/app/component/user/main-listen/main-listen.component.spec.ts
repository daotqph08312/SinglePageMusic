import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MainListenComponent } from './main-listen.component';

describe('MainListenComponent', () => {
  let component: MainListenComponent;
  let fixture: ComponentFixture<MainListenComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MainListenComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MainListenComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
