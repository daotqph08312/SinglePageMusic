import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GenresSingleComponent } from './genres-single.component';

describe('GenresSingleComponent', () => {
  let component: GenresSingleComponent;
  let fixture: ComponentFixture<GenresSingleComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GenresSingleComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GenresSingleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
